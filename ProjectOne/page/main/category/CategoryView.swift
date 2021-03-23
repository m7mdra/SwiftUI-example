//
//  CategoryView.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct CategoryView : View {
    var body: some View{
        ScrollView{
            Text("Ottoman Collection\nClassic Collections")
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 30))
                .padding(.top, 8)
            Text("Search through more than 1000+ watches")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
                .padding(.top, 4)
                .padding(.bottom)
                .multilineTextAlignment(.center)
            HStack{
                Text("Limited Edition")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<CategoryData.list.count) {index in
                        NavigationLink( destination: ProductPageView ()){
                            HomeCategory(data: CategoryData.list[index])
                        }
                    }
                }
            }.padding(.vertical)
        
            HStack{
                Text("Anatolian Civilizations Catalog")
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
            }.padding(.vertical)
            HStack{
                Text("Zevk-i Selim Catalog")
                    .foregroundColor(.black)
                    .font(.custom("Heavy", size: 20))
                
                Spacer()
                Button(action:{},label: {
                    Text("See all")
                }).accentColor(Color(hex:"#CC9D76"))
                
            }.padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<CategoryData.list2.count) {index in
                        
                        HomeCategory(data: CategoryData.list2[index])
                    }
                }
            }.padding(.vertical)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
