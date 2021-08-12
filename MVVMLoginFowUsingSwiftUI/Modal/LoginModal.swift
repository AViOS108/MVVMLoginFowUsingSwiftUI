//
//  LoginModal.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import Foundation

struct  LoginModal {
    var email : String = ""
    var pwd : String = ""
    var errorMessage : String = ""
    var isInValid = false
    var isLoginSucessFul = false
    var isShowActivityIndicator = false


}

struct LoginRequest : Encodable {
    let email, password: String
}
