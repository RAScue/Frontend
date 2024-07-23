//
//  NextButton.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//

import SwiftUI

struct NextButton<Destination: View>: View {
    var title: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                CustomText(text: title, fontType: .SubTitle)
                    .foregroundColor(Color("10"))
            }
            .frame(height: 54)
            .frame(maxWidth: .infinity)
            .background(Color("90"))
            .cornerRadius(10)
            .padding(.horizontal, 32)
        }
        .frame(maxWidth: .infinity, maxHeight: 58)
    }
}

#Preview {
    NextButton(title: "로그인", destination: EmptyView())
}
