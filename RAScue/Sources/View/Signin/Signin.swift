//
//  Signin.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//
import SwiftUI

struct Signin: View {
    @StateObject private var viewModel = SigninViewModel()
    
    var body: some View {
        ZStack {
            Color("20").ignoresSafeArea()
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Image("Logo")
                            .resizable()
                            .frame(width: 160, height: 58.18)
                        CustomText(text: "로그인하기", fontType: .SubTitle)
                    }
                    Spacer()
                }
                .padding(20)
                .padding(.top, 66.82)
                .background(Color("10"))
                
                VStack(spacing: 14) {
                    InputBox(title: "아이디", placehorder: "아이디를 입력해주세요", text: $viewModel.username)
                    PasswordInputBox(title: "비밀번호", placehorder: "비밀번호를 입력하세요", text: $viewModel.password)
                }
                .padding(20)
                
                HStack {
                    Spacer()
                    NavigationLink(destination: EmptyView()){
                        CustomText(text: "비밀번호 찾기", fontType: .Caption)
                            .padding(.trailing, 20)
                            .foregroundColor(Color("80"))
                    }
                }
                
                HStack {
                    VStack { Divider().background(Color("40")).padding(.leading, 20)}
                    CustomText(text: "계정이 없을 경우", fontType: .CaptionStrong)
                        .padding(.horizontal, 10)
                        .foregroundColor(Color("40"))
                    VStack { Divider().background(Color("40")).padding(.trailing, 20) }
                }.padding(.top, 10).padding(.bottom, 20)
                
                HStack {
                    Spacer()
                    HStack(alignment: .center, spacing: 4){
                        CustomText(text: "계정이 없으신가요?", fontType: .Caption)
                            .foregroundColor(Color("80"))
                        NavigationLink(destination: Signup())
                        {
                            CustomText(text: "회원가입", fontType: .CaptionStrong)
                                .foregroundColor(Color("90"))
                        }
                    }
                    Spacer()
                }
                
                Spacer()
            }
           
            .frame(maxHeight: .infinity, alignment: .top)
        }
        NextButton(title: "로그인", destination: EmptyView())
    }
}

#Preview {
    Signin()
}
