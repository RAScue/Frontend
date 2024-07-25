//
//  ProfileView.swift
//  RAScue
//
//  Created by 준기 on 7/26/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedImage: UIImage? = UIImage(named: "Human")
    @State private var isImagePickerPresented = false

    var body: some View {
        ZStack {
            Color("20").ignoresSafeArea()
            VStack {
                VStack(alignment: .leading) {
                    CustomText(text: "회원정보", fontType: .SubTitle)
                        .padding(.leading, 24)
                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: .leading)
                }
                VStack(alignment: .center, spacing: 17) {
                    ZStack {
                        if let selectedImage = selectedImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                        } else {
                            Image("Human")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .shadow(radius: 10)
                        }

                        Button(action: {
                            isImagePickerPresented = true
                        }) {
                            Image("Plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .background(Color.white)
                                .clipShape(Circle())
                                .offset(x: 30, y: 30)
                        }
                    }
                    VStack(alignment: .center, spacing: 4) {
                        HStack(spacing: 10) {
                            CustomText(text: "민준기", fontType: .Title)
                                .foregroundColor(Color("90"))
                            CustomText(text: "소방사", fontType: .Title)
                                .foregroundColor(Color("80"))
                        }
                        CustomText(text: "서울용산소방서", fontType: .Body)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                    Divider()
                    CustomText(text: "도움말", fontType: .CaptionStrong)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 40)
                    VStack(spacing: 0) {
                        HelpItem(iconName: "ID", text: "내 정보 관리")
                        HelpItem(iconName: "Announce", text: "공지사항")
                        HelpItem(iconName: "Ask", text: "문의사항")
                        HelpItem(iconName: "Update", text: "업데이트")
                        HelpItem(iconName: "Logout", text: "로그아웃")
                    }
                }
                Spacer()
            }
            .sheet(isPresented: $isImagePickerPresented) {
                ImagePicker(selectedImage: $selectedImage)
            }
        }
    }
}

struct HelpItem: View {
    var iconName: String
    var text: String

    var body: some View {
        HStack(spacing: 27) {
            Image(iconName)
                .resizable()
                .frame(width: 24, height: 24)
            CustomText(text: text, fontType: .BodyStrong)
        }
        .padding(.horizontal, 24)
        .padding(.leading, 45)
        .frame(maxWidth: .infinity, maxHeight: 74, alignment: .leading)
        .foregroundColor(Color("80"))
    }
}

#Preview {
    ProfileView()
}
