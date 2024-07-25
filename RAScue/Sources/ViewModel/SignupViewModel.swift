import Firebase
import FirebaseAuth
import SwiftUI

class ViewModel: ObservableObject {
    @Published var errorMessage: String? = nil
    @Published var successMessage: String? = nil
    @Published var isEmailVerified: Bool = false

    @Published var id: String = ""
    @Published var password: String = ""
    @Published var passwordCheck: String = ""
    @Published var name: String = ""
    @Published var phone: String = ""
    @Published var email: String = ""
    @Published var associate: String = ""

    func emailAuthSignUp(email: String, userName: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = error.localizedDescription
                }
                return
            }

            if let result = result {
                let changeRequest = result.user.createProfileChangeRequest()
                changeRequest.displayName = userName
                changeRequest.commitChanges { error in
                    if let error = error {
                        DispatchQueue.main.async {
                            self?.errorMessage = error.localizedDescription
                        }
                        return
                    }

                    DispatchQueue.main.async {
                        self?.sendEmailVerification()
                    }
                }
            }
        }
    }

    func sendEmailVerification() {
        Auth.auth().currentUser?.sendEmailVerification { [weak self] error in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = error.localizedDescription
                }
                return
            }
            DispatchQueue.main.async {
                self?.successMessage = "Verification email sent. Please check your inbox."
            }
        }
    }

    func checkEmailVerificationStatus(completion: @escaping (Bool) -> Void) {
        Auth.auth().currentUser?.reload { [weak self] error in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = error.localizedDescription
                    completion(false)
                }
                return
            }
            if let isVerified = Auth.auth().currentUser?.isEmailVerified {
                DispatchQueue.main.async {
                    self?.isEmailVerified = isVerified
                    completion(isVerified)
                }
            } else {
                completion(false)
            }
        }
    }

    func signIn(completion: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] _, error in
            if let error = error {
                DispatchQueue.main.async {
                    self?.errorMessage = error.localizedDescription
                    completion(false)
                }
                return
            }
            DispatchQueue.main.async {
                completion(true)
            }
        }
    }
}
