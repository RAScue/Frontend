//
//  Typography.swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//

import SwiftUI

struct CustomText: View {
    let text: String
    let fontType: FontType

    var body: some View {
        let fontSetting = fontType.setting
        Text(text)
            .font(.custom(fontSetting.name, size: fontSetting.size))
            .tracking((fontSetting.size * fontSetting.tracking) / 100)
            .kerning(fontSetting.kerning)
    }
}
