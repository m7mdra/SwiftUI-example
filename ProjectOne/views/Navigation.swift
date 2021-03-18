//
//  Navigation.swift
//  ProjectOne
//
//  Created by Sharif on 18/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct Navigation<Content> : View where Content : View {
    var content:Content
    var body: some View{
        NavigationView{
            ZStack{
                Color.black
                Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
                content
            }
            .navigationBarTitle("Hello",displayMode: .inline)
                .navigationBarColor(.black) // This is how you will use it
                .navigationBarItems(leading: Button(action: {
                    
                }, label: {
                    Image("arrow-left").renderingMode(.original)
                }))
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation(content: VStack{
            Text("Hello")
        })
    }
}
struct NavigationBarModifier: ViewModifier {
    
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
        
    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
extension View {
    
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
}
