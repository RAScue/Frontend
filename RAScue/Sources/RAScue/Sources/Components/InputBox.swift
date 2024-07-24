//
//  InputBox.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//
import SwiftUI

struct InputBox: View {
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
                TextField("", text: $name)
                    .foregroundColor(Color("80"))
                    .padding([.vertical, .leading], 16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color("40"), lineWidth: 1.5)
                    )
            }
        }
    }
}


