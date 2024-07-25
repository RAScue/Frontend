//
//  SecondSignupViewModel.swift
//  RAScue
//
//  Created by 준기 on 7/26/24.
//

import Combine

class SecondSignupViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var phone: String = ""
    @Published var associate: String = ""

    @Published var isSignupSuccessful: Bool = false
    @Published var errorMessage: String?

    func signup() {
        if name.isEmpty || email.isEmpty || phone.isEmpty || associate.isEmpty{
            errorMessage = "빈칸을 모두 채워주세요."
            isSignupSuccessful = false
        } else {
            // 실제 회원가입 요청을 보낼 부분
            isSignupSuccessful = true
            errorMessage = nil
        }
    }
}
