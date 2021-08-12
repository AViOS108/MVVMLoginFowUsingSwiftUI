//
//  NetworkUtility.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 10/08/21.
//

import Foundation


struct NetworkUtility {
    
    static let shared = NetworkUtility()
    private init(){}
    
    
    /*
     use any third party Lib or URLSession to do a netwrokcall
     */
    
    func hitPostApi(request: URLRequest,completionHandler:@escaping(_ result: Data?)-> Void,failure:@escaping(_ error : Error?) -> Void) {
        URLSession.shared.dataTask(with: request) { data, response, error in
            if(error == nil && data != nil) {
                _ = completionHandler(data)
            }
            else{
                failure(error)
            }
        }.resume()
    }
    
    func hitGetApi() {
        
    }
    
}
