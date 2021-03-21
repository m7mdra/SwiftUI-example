//
//  DescriptionTabView.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct DescriptionTabView: View {
    var body: some View {
        Text("The ewers were used for washing hands and face in Ottoman culture, and their different forms were used in the service of liquid drinks such as sherbet in the mansion, especially in the palace kitchen.\n\n\n")
            
            .foregroundColor(Color(hex:"#676870"))
            .multilineTextAlignment(.center)
            .font(.custom("book", size: 14))
            .padding(.horizontal,40)
    }
}
