//
//  SigninViewModel.swift .swift
//  RAScue
//
//  Created by 준기 on 7/23/24.
//

import Combine

class SigninViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isLoginSuccessful: Bool = false
    @Published var errorMessage: String?

    func login() {
        // 로그인 로직을 여기에 추가합니다.
        // 예를 들어, 네트워크 요청을 보내고 응답을 처리하는 코드 등을 작성합니다.
        // 이 예제에서는 단순히 성공 여부를 true로 설정합니다.
        if username.isEmpty || password.isEmpty {
            errorMessage = "아이디와 비밀번호를 입력해주세요."
            isLoginSuccessful = false
        } else {
            // 실제 로그인 요청을 보낼 부분
            isLoginSuccessful = true
            errorMessage = nil
        }
    }
}
