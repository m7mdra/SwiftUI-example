//
//  ProductDetailsTabs.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ProductDetailsTabs: View {
    @State var selection = 0
    var body: some View {
        Group {
            SlidingTabView(selection: $selection, tabs: ["Description","Specifications","Reviews"],selectionBarColor: Color(hex:"#CC9D76"))
            if(selection == 0){
                DescriptionTabView()
            }
            if(selection==1){
                SpecificationsTabView()
            }
            if(selection==2){
                ReviewsTabView()
            }
        }
    }
}
