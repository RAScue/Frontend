import Firebase
import FirebaseAuth
import SwiftUI

class SigninViewModel: ObservableObject {
    @Published var errorMessage: String? = nil
    @Published var isSignedIn: Bool = false

    @Published var username: String = ""
    @Published var password: String = ""

    func emailAuthSignIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = "입력한 정보가 일치하지 않습니다."
                }
                return
            }

            if result != nil {
                DispatchQueue.main.async {
                    self?.isSignedIn = true
                }
            }
        }
    }

    func signIn() {
        emailAuthSignIn(email: username, password: password)
    }
}
