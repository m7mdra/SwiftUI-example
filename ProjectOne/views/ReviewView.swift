//
//  Review.swift
//  ProjectOne
//
//  Created by Sharif on 17/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ReviewView : View {
    var body: some View{
        VStack{
            HStack(alignment:.bottom) {
                Image("review_image")
                VStack{
                    Text("Victor Flexin")
                        .font(.custom("Black", size: 16))
                    
                    HStack(spacing:5){
                        Image("star_filled")
                        Image("star_filled")
                        Image("star_filled")
                        Image("star_filled")
                        Image("star")
                        
                        
                    }
                    
                    
                }
                Spacer()
                Text("23 September 2019")
                    .font(.custom("Book", size: 14))
            }
            Text("The dial on this timepiece is extremely unique, as it is a concentric circular pattern that is covered by sturdy sapphire glass.")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color.black)
            HStack{
                Text("Helpful?")
                    .padding(.vertical,8)
                    .foregroundColor(Color(hex:"#CC9D76"))

                    .font(.custom("Book", size: 14))
                
                Spacer()
                
                Text("Report")
                    .foregroundColor(Color.red)
                    .font(.custom("Book", size: 14))
                
            }
            
        }.padding(.horizontal,30)
    }
}

struct Review_Previews: PreviewProvider {
    static var previews: some View {
        List(0 ..< 5) { item in
            ReviewView()
        }
    }
}
