//
//  SecondSignup.swift
//  RAScue
//
//  Created by 준기 on 7/24/24.
//

import SwiftUI

struct SecondSignup: View {
    @StateObject private var viewModel = ViewModel()

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
                        InputBox(title: "이름", placehorder: "이름을 입력해주세요", text: $viewModel.name)
                        HStack(spacing: 10) {
                            InputBox(title: "이메일", placehorder: "이메일을 입력하세요", text: $viewModel.email)
                            Button(action: {
                                viewModel.sendEmailVerification()

                            }) {
                                CustomText(text: "인증하기", fontType: .BodyStrong)
                                    .padding(.top, 20)
                                    .foregroundColor(Color("80"))
                            }
                        }
                        InputBox(title: "전화번호", placehorder: "전화번호를 입력해주세요", text: $viewModel.phone)
                        InputBox(title: "소속", placehorder: "소속을 입력해주세요", text: $viewModel.associate)
                    }
                    .padding(20)
                    Spacer()
                    NextButton(title: "회원가입", destination: Signin())
                }
                .frame(maxHeight: .infinity, alignment: .top)
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    SecondSignup()
        .environmentObject(ViewModel())
}
