//
//  LoadingView.swift
//  ProjectOne
//
//  Created by Sharif on 20/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct LoadingView : View {
    var body: some View{
        VStack{
            Spacer()
            ActivityIndicator(isAnimating: true)
            Text("L O A D I N G")
                .font(.custom("Medium", size: 13))
                .foregroundColor(Color(hex:"#cc9d76"))
            Spacer()
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
struct ActivityIndicator: UIViewRepresentable {
    
    typealias UIView = UIActivityIndicatorView
    var isAnimating: Bool
    fileprivate var configuration = { (indicator: UIView) in }
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIView { UIView() }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Self>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        uiView.style = .large
        uiView.color = UIColor(red: 0.80, green: 0.62, blue: 0.46, alpha: 1.00)
        configuration(uiView)
    }
}
