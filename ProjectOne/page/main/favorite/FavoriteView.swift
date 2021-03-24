//
//  FavoriteView.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct FavoriteView : View{
    var body: some View{
        ScrollView(showsIndicators:false) {
            HStack{
                HomeCategory(data: CategoryData.list2[0],showBookButton: true)
                Spacer()
                HomeCategory(data: CategoryData.list2[1],showBookButton: true)
            }
            HStack{
                 HomeCategory(data: CategoryData.list2[2],showBookButton: true)
                Spacer()

                 HomeCategory(data: CategoryData.list2[3],showBookButton: true)
             }
            HStack{
                 HomeCategory(data: CategoryData.list2[4],showBookButton: true)
                Spacer()

                 HomeCategory(data: CategoryData.list2[5],showBookButton: true)
             }

            
        }.padding()
        
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
