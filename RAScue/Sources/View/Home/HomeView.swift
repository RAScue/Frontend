//
//  HomeView.swift
//  RAScue
//
//  Created by 준기 on 7/26/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("20").ignoresSafeArea()
            VStack {
                VStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 88.36, height: 32)
                    Spacer()
                }.frame(maxWidth: .infinity, maxHeight: 52, alignment: .leading)
                    .padding(.leading, 24)
                VStack(spacing: 12) {
                    VStack {
                        HStack {
                            CustomText(text: "발견", fontType: .SubTitle)
                                .foregroundColor(Color("80"))
                                .padding([.leading, .top], 14)
                            Spacer()
                            Image("RightArrow")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding([.top, .trailing], 14)
                        }
                        Spacer()
                        HStack(spacing: 10) {
                            Image("DummyImg").resizable()
                                .frame(width: 120, height: 120).cornerRadius(4)
                                .padding([.leading, .trailing], 14)
                            VStack(alignment: .leading, spacing: 4) {
                                CustomText(text: "위치 X, Y", fontType: .BodyStrong)
                                CustomText(text: "자세각 Z", fontType: .BodyStrong)
                                CustomText(text: "시간 hh:mm:ss", fontType: .BodyStrong)
                                Spacer()
                            }.foregroundColor(Color("80"))
                        }.frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                    }.frame(maxWidth: 343, maxHeight: 183)
                        .background(Color("10"))
                        .cornerRadius(15)
                    VStack {
                        HStack {
                            CustomText(text: "발견", fontType: .SubTitle)
                                .foregroundColor(Color("80"))
                                .padding([.leading, .top], 14)
                            Spacer()
                            Image("RightArrow")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding([.top, .trailing], 14)
                        }
                        Spacer()
                        HStack(spacing: 10) {
                            Image("DummyImg").resizable()
                                .frame(width: 120, height: 120).cornerRadius(4)
                                .padding([.leading, .trailing], 14)
                            VStack(alignment: .leading, spacing: 4) {
                                CustomText(text: "위치 X, Y", fontType: .BodyStrong)
                                CustomText(text: "자세각 Z", fontType: .BodyStrong)
                                CustomText(text: "시간 hh:mm:ss", fontType: .BodyStrong)
                                Spacer()
                            }.foregroundColor((Color("80")))
                        }.frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                    }.frame(maxWidth: 343, maxHeight: 183)
                        .background(Color("10"))
                        .cornerRadius(15)
                    VStack {
                        HStack {
                            CustomText(text: "발견", fontType: .SubTitle)
                                .foregroundColor((Color("80")))
                                .padding([.leading, .top], 14)
                            Spacer()
                            Image("RightArrow")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding([.top, .trailing], 14)
                        }
                        Spacer()
                        HStack(spacing: 10) {
                            Image("DummyImg").resizable()
                                .frame(width: 120, height: 120).cornerRadius(4)
                                .padding([.leading, .trailing], 14)
                            VStack(alignment: .leading, spacing: 4) {
                                CustomText(text: "위치 X, Y", fontType: .BodyStrong)
                                CustomText(text: "자세각 Z", fontType: .BodyStrong)
                                CustomText(text: "시간 hh:mm:ss", fontType: .BodyStrong)
                                Spacer()
                            }.foregroundColor(Color("80"))
                        }.frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                    }.frame(maxWidth: 343, maxHeight: 183)
                        .background(Color("10"))
                        .cornerRadius(15)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
