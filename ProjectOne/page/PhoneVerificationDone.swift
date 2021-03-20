//
//  PhoneVerificationDone.swift
//  ProjectOne
//
//  Created by Sharif on 20/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation

import SwiftUI
struct PhoneVerificationDone : View{
    @State private var username:String = ""
    
    var body: some View{
        VStack{
           
            HStack{
                Spacer()
                Image("close")
            }.padding()
            Spacer()
            Image("check_done")
            Text("Phone verified")
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 30))
                .padding(.top, 16)
            Text("Congratulations, your phone number has been verified. You can now start using the app.")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
                .padding(.vertical, 10)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
          
            Spacer()
            MasterButton(action: {
                
            }, label: "CONTINUE")
                .padding(.vertical, 16)
            
            
            
        }
    }
}

struct PhoneVerificationDone_Previews: PreviewProvider {
    static var previews: some View {
        PhoneVerificationDone()
    }
}
