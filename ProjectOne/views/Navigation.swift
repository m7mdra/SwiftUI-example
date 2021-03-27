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
    var title:String
    
    var content:Content
    var leading:AnyView = EmptyView().toAnyView()
    var trailing:AnyView = EmptyView().toAnyView()
    var barColor :Color = Color.black
    
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.black
                Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
                
                content
            }
            .background(Color.black)
            .navigationBarTitle(Text(title),displayMode: .inline)
                .navigationBarColor(.black) // This is how you will use it
                
                .navigationBarItems(leading: leading,trailing: trailing)
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation(title:"Store",content: Text("Hello"),leading: Image("menu").toAnyView(),trailing: Image("search").toAnyView())
    }
}
struct NavigationBarModifier: ViewModifier {
    
    var backgroundColor: UIColor?
    var titleColor: UIColor?
    
    
    init( backgroundColor: UIColor?,titleColor:UIColor) {
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        
        coloredAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor,
                                                 NSAttributedString.Key.font : UIFont(name: "Avenir-Book", size: 16)!]
        coloredAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor,
        NSAttributedString.Key.font : UIFont(name: "Avenir-Book", size: 16)!]
        
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
    
    func navigationBarColor(_ backgroundColor: UIColor?,titleColor:UIColor = .white) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor,titleColor: titleColor))
    }
    
}
