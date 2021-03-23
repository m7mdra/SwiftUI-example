//
//  SuggestionView.swift
//  ProjectOne
//
//  Created by Sharif on 23/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
struct SearchSuggestion : View{
    var body: some View{
        VStack(alignment:.leading){
            HStack{
                Spacer()
            }
            Text("Suggestion title")
                .font(.custom("Book", size: 16))
                .foregroundColor(Color(hex:"#272833"))
                
            Text("Suggestion Subtitle")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
            
        }.padding(.horizontal,40)
            .padding(.vertical,8)
    }
}
