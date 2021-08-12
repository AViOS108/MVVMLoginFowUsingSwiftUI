//
//  LoginViewModel.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import Foundation

struct lognValidationModel {
    var message : String
    var success : Bool
}


class  LoginViewModel : ObservableObject {
    
    @Published  var loginmodal = LoginModal()
    private let loginResource = LoginNetworklayer()
    
    func validateInputs() -> Bool {
        if LoginUserInputs().validateInputs(email: loginmodal.email, pwd: loginmodal.pwd){
            return true
        }
        loginmodal.isInValid = true
        loginmodal.errorMessage = "Please validate your input once"
        return false
    }
    
    func refreshModal()  {
        self.loginmodal = LoginModal()
    }
    
    func callLoginApi(){
        let loginRequest = LoginRequest.init(email: loginmodal.email, password: loginmodal.pwd)
        loginmodal.isShowActivityIndicator = true
        loginResource.hitLoginAPI(request: loginRequest) { data in
            DispatchQueue.main.async {
                self.loginmodal.isShowActivityIndicator = false
            do {
                    let jsonResult = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! Dictionary<String,Bool>

                    if (jsonResult["Status"]! ) == true {
                        self.loginmodal.isLoginSucessFul = true
                    }
                    else{
                        self.loginmodal.isLoginSucessFul = false
                    }
                    
            
            } catch let myJSONError {
                print(myJSONError)
            }
            }
        } failure: { error in
            print(error)
        }
        
    }
    
    
}

