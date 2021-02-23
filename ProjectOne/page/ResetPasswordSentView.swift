//
//  ResetPasswordSent.swift
//  ProjectOne
//
//  Created by Sharif on 23/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ResetPasswordSentView : View{
    @State private var username:String = ""
    
    var body: some View{
        VStack{
           
            HStack{
                Spacer()
                Image("close")
            }.padding()
            Spacer()
            Image("mail_sent")
            Text("Check your email")
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 30))
                .padding(.top, 16)
            Text("We've sent you instructions on how to reset the password (also check the Spam folder).")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
                .padding(.vertical, 10)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
          
            Spacer()
            MasterButton(action: {
                
            }, label: "OPEN MY MAIL CLIENT")
                .padding(.vertical, 16)
            
            
            
        }
    }
}

struct ResetPasswordSentView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordSentView()
    }
}
