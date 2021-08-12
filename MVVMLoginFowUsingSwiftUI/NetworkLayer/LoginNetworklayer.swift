//
//  LoginNetworklayer.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 09/08/21.
//

import Foundation


struct LoginNetworklayer {
    
    func hitLoginAPI(request : LoginRequest, completionHandler:@escaping(_ result: Data?)->Void,failure:@escaping(_ error : Error?) -> Void)  {
        
        var urlRequest = URLRequest(url: URL(string: DemoUrls.loginURL)!)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = try? JSONEncoder().encode(request)
        
        NetworkUtility.shared.hitPostApi(request: urlRequest) { data in
            completionHandler(data)
        } failure: { error in
            failure(error)

        }

        
        
    }
    
    
    
    
    
    
}
