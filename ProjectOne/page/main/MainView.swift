//
//  HomeView.swift
//  ProjectOne
//
//  Created by Sharif on 23/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct MainPage : View {
    @State var selectedPageIndex = 0
    @State var title = "STORE"
    var body: some View{
        
        Navigation(title:"Store",content:  VStack{
            if(self.selectedPageIndex==0){
                HomeView()
            }
            if(self.selectedPageIndex == 1){
                CategoryView()

            }
            if(self.selectedPageIndex==3){
                FavoriteView()

            }
            if(self.selectedPageIndex == 4){
                SettingsView()
            }
            Spacer()
            
            HStack{
                BottomNavigationItem(selected: self.selectedPageIndex==0,image: "home", action: {
                    self.title = "STORE"
                    self.selectedPageIndex=0
                })
                BottomNavigationItem(selected: self.selectedPageIndex==1,image: "categories", action: {
                    self.title = "CATEGORIES"

                    self.selectedPageIndex=1
                })
                BottomNavigationItem(selected: self.selectedPageIndex==2,image: "cart", action: {
                    self.selectedPageIndex=2
                })
                BottomNavigationItem(selected: self.selectedPageIndex==3,image: "bookmarks", action: {
                    self.selectedPageIndex=3
                    self.title = "FAVORITES"

                })
                BottomNavigationItem(selected: self.selectedPageIndex==4,image: "settings", action: {
                    self.selectedPageIndex=4
                    self.title = "SETTINGS & MORE"

                })
            }.padding(.vertical)
            .navigationBarTitle(title)
            },leading: Image("menu").toAnyView(),trailing: NavigationLink( destination: FilterView(),label: {
                Image("search")
            }).toAnyView())
        
        
        
    }
    struct BottomNavigationItem : View{
        var selected : Bool = false
        var image : String
        var action: ()-> Void
        var body: some View{
            Button(action: {
                self.action()
                
            }){
                Image(image)
                    .renderingMode(.template)
                    .foregroundColor(selected ? Color(hex:"#CC9D76"):.black)
            }.frame(minWidth: 0, maxWidth: .infinity)
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
        }
    }
}



