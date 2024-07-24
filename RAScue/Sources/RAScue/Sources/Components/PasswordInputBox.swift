//
//  PasswordInputBox.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//
import SwiftUI

struct PasswordInputBox: View {
    @State private var isSecure: Bool = true
    @State var name: String = ""
    let title: String
    let placehorder: String
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            CustomText(text: title, fontType: .BodyStrong)
                .foregroundColor(Color("80"))
            ZStack(alignment: .leading) {
                if name.isEmpty {
                    CustomText(text: placehorder, fontType: .BodyStrong)
                        .padding(.leading, 16)
                        .foregroundColor(Color("50"))
                }
                HStack {
                    if isSecure {
                        SecureField("", text: $name)
                            .padding([.vertical, .leading], 16)
                            .foregroundColor(Color("80"))
                    } else {
                        TextField("", text: $name)
                            .padding([.vertical, .leading], 16)
                            .foregroundColor(Color("80"))
                    }
                    Button(action: {
                        isSecure.toggle()
                    }) {
                        Image(isSecure ? "Invisible" : "Visible")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 16)
                            .foregroundColor(Color("50"))
                    }
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color("40"), lineWidth: 1.5)
                )
            }
        }
    }
}

