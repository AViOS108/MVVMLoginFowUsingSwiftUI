//
//  UserInputValidations.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import Foundation


struct LoginUserInputs {
    
    func validateInputs(email: String,pwd : String) -> Bool {
        
        if email.isEmpty || pwd.isEmpty{
            // You can add any other validation as well
            return false

        }
        return true

    }
}


