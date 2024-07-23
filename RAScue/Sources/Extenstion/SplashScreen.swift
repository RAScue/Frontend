//
//  SplashScreen.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .frame(width: 242.99, height: 88, alignment: .center)
        }
    }
}

#Preview {
    SplashScreen()
}
