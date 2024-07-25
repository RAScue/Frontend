//
//  Signup.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//

import SwiftUI

struct Signup: View {
    @StateObject private var viewModel = ViewModel()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                Color("20").ignoresSafeArea()
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 160, height: 58.18)
                            CustomText(text: "회원가입하기", fontType: .SubTitle)
                                .foregroundColor(Color("80"))
                        }
                        Spacer()
                    }
                    .padding(20)
                    .padding(.top, 66.82)
                    .background(Color("10"))

                    VStack(spacing: 14) {
                        InputBox(title: "아이디", placehorder: "아이디를 입력해주세요", text: $viewModel.id)
                        PasswordInputBox(title: "비밀번호", placehorder: "비밀번호를 입력하세요", text: $viewModel.password)
                        PasswordInputBox(title: "비밀번호 확인", placehorder: "비밀번호를 다시 입력하세요", text: $viewModel.passwordCheck)
                    }
                    .padding(20)

                    if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding(.horizontal, 20)
                    }

                    HStack(alignment: .center) {
                        Spacer()
                        VStack { Divider().background(Color("40")) }
                        CustomText(text: "계정이 존재할 경우", fontType: .CaptionStrong)
                            .padding(.horizontal, 10)
                            .foregroundColor(Color("40"))
                        VStack { Divider().background(Color("40")) }
                        Spacer()
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 20)

                    HStack(alignment: .center) {
                        Spacer()
                        HStack(alignment: .center, spacing: 4) {
                            CustomText(text: "계정이 있으신가요?", fontType: .Caption)
                                .foregroundColor(Color("80"))
                            NavigationLink(destination: Signin()) {
                                CustomText(text: "로그인", fontType: .CaptionStrong)
                                    .foregroundColor(Color("90"))
                            }
                        }
                        Spacer()
                    }

                    Spacer()
                    Button(action: {
                        if viewModel.password != viewModel.passwordCheck {
                            viewModel.errorMessage = "비밀번호가 일치하지 않습니다"
                            return
                        }
                        viewModel.emailAuthSignUp(email: viewModel.email, userName: viewModel.id, password: viewModel.password)
                    }) {
                        CustomText(text: "다음", fontType: .BodyStrong)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("90"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    Signup()
        .environmentObject(ViewModel())
}
