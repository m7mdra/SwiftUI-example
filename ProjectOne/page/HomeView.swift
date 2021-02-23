//
//  HomeView.swift
//  ProjectOne
//
//  Created by Sharif on 23/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeView : View {
    @State var selectedPageIndex = 0
    var body: some View{
        NavigationContent(label: "STORE",leading:Image("menu").toAnyView(),trailing: Image("search").toAnyView()){
            VStack{
                HStack(){
                    
                    Button(action: {
                        self.selectedPageIndex = 0
                    }){
                        Image("home")
                        .renderingMode(.template)
                                                 .foregroundColor(self.selectedPageIndex == 0 ? Color(hex:"#CC9D76"):.black)
                    }.frame(minWidth: 0, maxWidth: .infinity)
           
                    Button(action: {
                        self.selectedPageIndex = 1

                    }){
                        Image("categories")
                        .renderingMode(.template)
                                                 .foregroundColor(self.selectedPageIndex == 1 ? Color(hex:"#CC9D76"):.black)
                        
                    }.frame(minWidth: 0, maxWidth: .infinity)
                    Button(action: {
                        self.selectedPageIndex = 2

                    }){
                        Image("cart")
                        .renderingMode(.template)
                                                 .foregroundColor(self.selectedPageIndex == 2 ? Color(hex:"#CC9D76"):.black)
                    }.frame(minWidth: 0, maxWidth: .infinity)
                    Button(action: {
                        self.selectedPageIndex = 3

                    }){
                        Image("bookmarks")
                            .renderingMode(.template)
                                                 .foregroundColor(self.selectedPageIndex == 3 ? Color(hex:"#CC9D76"):.black)
                    }.frame(minWidth: 0, maxWidth: .infinity)
                    Button(action: {
                        self.selectedPageIndex = 4

                    }){
                        Image("settings")
                            
                            .renderingMode(.template)
                            .foregroundColor(self.selectedPageIndex == 4 ? Color(hex:"#CC9D76"):.black)
                    }.frame(minWidth: 0, maxWidth: .infinity)
                }
            }.toAnyView()
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
