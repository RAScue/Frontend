//
//  TabBar.swift
//  RAScue
//
//  Created by 준기 on 7/26/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill")
                        CustomText(text: "홈", fontType: .BodyStrong)
                    }
                }

            ChatView()
                .tabItem {
                    VStack(spacing: 4) {
                        Image(systemName: "message.fill")
                        CustomText(text: "채팅", fontType: .BodyStrong)
                    }
                }

            ProfileView()
                .tabItem {
                    VStack(spacing: 4) {
                        Image(systemName: "person.fill")
                        CustomText(text: "프로필", fontType: .BodyStrong)
                    }
                }
        }
        .navigationBarBackButtonHidden()
        .accentColor(.orange)
    }
}

#Preview {
    TabBar()
}
