//
//  ReviewsTabView.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ReviewsTabView: View {
    var body: some View {
        VStack{
            ReviewView()
            ReviewView()
        }
    }
}

struct ReviewsTabView_Previews: PreviewProvider {
    static var previews: some View {
       ReviewsTabView()
    }
}
