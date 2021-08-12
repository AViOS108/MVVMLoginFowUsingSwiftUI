//
//  HorizontalButtonsView.swift
//  DemoSwiftui
//
//  Created by Anurag Bhakuni on 04/08/21.
//

import SwiftUI

struct HorizontalButtonsView: View {
    @Binding  var isActive : Bool
    @Binding  var user : LoginViewModel

    var body: some View {
            HStack{
                Button("Forget password") {
                    isActive = false
                }.padding()
                 Button("Login") {
                    if  isActive && (user.validateInputs()){
                        user.callLoginApi()
                    }
                    isActive = true
                 }.padding()
                 .alert(isPresented: $user.loginmodal.isInValid ) {
                    Alert(title: Text(""),
                          message: Text(user.loginmodal.errorMessage),
                                     dismissButton: .default(Text("OK")))
                 }
                
            }.padding(-4.0)
    
    }
}

struct HorizontalButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalButtonsView(isActive: .constant(true), user: .constant(LoginViewModel()))
    }
}
