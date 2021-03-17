//
//  HomeView.swift
//  ProjectOne
//
//  Created by Sharif on 24/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct HomeView : View {
    var body: some View{
        ScrollView(showsIndicators: false){
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
                    ForEach(0..<HomeTopDealsData.list.count) {index in
                        
                        HomeTopDeals(data: HomeTopDealsData.list[index])
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
            HStack{
                Text("Search by brand")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<BrandData.list.count) {index in
                        
                        HomeBrand(data:BrandData.list[index])
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
