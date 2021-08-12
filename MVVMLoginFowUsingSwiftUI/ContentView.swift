//
//  ContentView.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import SwiftUI
import CoreData



struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @State private var isActive : Bool = true
    @ObservedObject private var user = LoginViewModel()


    var body: some View {
        NavigationView{
            VStack{
                Text( isActive ? "Login" : "Forget password" ).padding(-3.0)
                Text( isActive ? "Enter your email and password" : "Please type your Email")
                TextField("Email", text: $user.loginmodal.email).padding().background(Color.gray).cornerRadius(3.0)
                if isActive{
                    SecureField("Password", text: $user.loginmodal.pwd).padding().background(Color.gray).cornerRadius(3.0)
                }
                HorizontalButtonsView(isActive: $isActive, user: .constant(user))
                ActivityIndicator(isShow: $user.loginmodal.isShowActivityIndicator)
                NavigationLink("", destination: Text("Successfully Login"), isActive: $user.loginmodal.isLoginSucessFul)
                
            }.padding()
            .onAppear(){
                user.refreshModal()
            }
        }
    }

 
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
