//
//  SpecificationsTabView.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct SpecificationsTabView: View {
    var body: some View {
        VStack{
            DescriptionSection(key: "Case diameter", value: "Diameter: 20 cm Length: 40 cm")
            DescriptionSection(key: "Product Origin", value: "Turkey")
            DescriptionSection(key: "Production method", value: "100% handmade.")
            DescriptionSection(key: "Material", value: "Gold and Glass crafting")
            DescriptionSection(key: "Strap color", value: "Gold Color")
        }
    }
}
