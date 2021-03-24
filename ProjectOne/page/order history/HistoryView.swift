//
//  HistoryItem.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
struct HistroyView: View {
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("ORDER #21412")
                    .font(.custom("Book", size: 14))
                    .foregroundColor(Color(hex:"#676870"))
                Spacer()
                Text("View Details")
                    .font(.custom("Book", size: 14))
                    .foregroundColor(Color(hex:"#cc9d76"))
            }.padding(.bottom)
            Text("Placed On:  23th of January")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#272833"))
            Text("Amount:  $230.50")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#272833"))
            Text("Status::  Canceled")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#272833"))
            Divider().padding(.vertical,4)
        }.padding(.horizontal,30)
            .padding(.vertical)
    }
}
