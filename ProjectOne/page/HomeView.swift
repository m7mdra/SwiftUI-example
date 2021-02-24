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
    var body: some View{
        NavigationContent(label: "STORE",leading:Image("menu").toAnyView(),trailing: Image("search").toAnyView()){
            VStack{
                if(self.selectedPageIndex==0){
                    HomeView()
                }
                Spacer()
                Rectangle()
                    .frame(width: UIScreen.width, height: 1)
                    .foregroundColor(Color(hex:"#F7F7F7"))
                HStack{
                    BottomNavigationItem(selected: self.selectedPageIndex==0,image: "home", action: {
                        self.selectedPageIndex=0
                    })
                    BottomNavigationItem(selected: self.selectedPageIndex==1,image: "categories", action: {
                        self.selectedPageIndex=1
                    })
                    BottomNavigationItem(selected: self.selectedPageIndex==2,image: "cart", action: {
                        self.selectedPageIndex=2
                    })
                    BottomNavigationItem(selected: self.selectedPageIndex==3,image: "bookmarks", action: {
                        self.selectedPageIndex=3
                    })
                    BottomNavigationItem(selected: self.selectedPageIndex==4,image: "settings", action: {
                        self.selectedPageIndex=4
                    })
                }.padding(.vertical,10)
            }.toAnyView()
            
        }
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
            HomeView()
        }
    }
}
struct HomeView : View {
    var body: some View{
        ScrollView{
            Text("Ottoman Collection")
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 30))
                .padding(.top, 8)
            Text("Find the perfect watch for your wrist")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
                .padding(.top, 4)
                .multilineTextAlignment(.center)
            HStack{
                Text("Categories")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                    .padding(.top, 8)
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<CategoryData.list.count) {index in
                        
                        HomeCategory(data: CategoryData.list[index])
                    }
                }
            }
            HStack{
                Text("Top deals")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(0..<2) {index in
                        
                        TopDeals()
                    }
                }
            }
            HStack{
                Text("Featured products")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<CategoryData.list1.count) {index in
                        
                        HomeCategory(data: CategoryData.list1[index])
                    }
                }
            }
        }
    }
}

struct CategoryData {
    var image:String
    var title:String
    var price:String
    static let list = [
        CategoryData(image: "thank_god_bowl", title: "Thank God Bowl", price: "€1750"),
        CategoryData(image: "kavuk_vase", title: "Kavuk Vase", price: "€4250"),
        CategoryData(image: "rumili_kase", title: "Rumili Kase", price: "€2350"),
        
    ]
    static let list1 = [
        CategoryData(image: "SoteriaVazo", title: "Hagia Sophia Deesis", price: "€3450"),
        CategoryData(image: "kavuk_vase", title: "Kavuk Vase", price: "€4250"),
        CategoryData(image: "soteria_vase", title: "Soteria Vase", price: "€2950"),
        
    ]
}
struct TopDeals : View{
    var body: some View{
        ZStack(alignment:.leading){
            LinearGradient(gradient: Gradient(colors: [ Color(hex:"B86518"),Color(hex:"#272833"),Color(hex:"#272833")]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .cornerRadius(4)
                .frame(height: 160)
            HStack{
                VStack(alignment:.leading){
                    Text("Gulcehre\nIbrik")
                        .foregroundColor(.white)
                        .font(.custom("Heavy", size: 20))
                    Text("W:32cm H:26cm")
                        .font(.custom("Book", size: 14))
                        .foregroundColor(Color.white)
                    Text("€5650")
                        .foregroundColor(.white)
                        .font(.custom("Heavy", size: 24))
                }.padding(.horizontal)
                Spacer()
                Image("Gulcehre_ibrik")
                    .resizable()
                    .scaledToFit()
                    .frame(width:220, height:220)
                    .padding(.trailing,-36)
                
                
            }
            
            
            
        }.padding(.leading)
        
    }
}
struct HomeCategory : View{
    var data:CategoryData
    var body: some View{
        VStack{
            Image(data.image)
            .resizable()
            .scaledToFit()
            .frame(width:138, height:138)
            
            Text(data.title)
                .foregroundColor(.black)
                
                .font(.custom("Book", size: 14))
            Text(data.price)
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 20))
        }
    }
}
