//
//  ActivityIndicator.swift
//  MVVMLoginFowUsingSwiftUI
//
//  Created by Anurag Bhakuni on 12/08/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var isShow : Bool
    
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityImageIndicator =  UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        activityImageIndicator.hidesWhenStopped = true
        activityImageIndicator.style = .medium
        return activityImageIndicator

    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if isShow{
            uiView.startAnimating()
        }
        else{
            uiView.stopAnimating()

        }
    }
    
    typealias UIViewType = UIActivityIndicatorView
    
    
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator(isShow: .constant(false))
    }
}
