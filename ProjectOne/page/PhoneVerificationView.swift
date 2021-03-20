//
//  PhoneVerificationView.swift
//  ProjectOne
//
//  Created by Sharif on 20/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
struct PhoneVerificationView :View {
    var body: some View{
        VStack{
            HStack{
                Spacer()
                Image("close")
            }.padding()
            Text("Enter the 4 digit code sent to:")
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 24))
                .padding(.top, 16)
            Text("1 222 555 6677")
                .foregroundColor(Color(hex:"#CC9D76"))
                .font(.custom("Heavy", size: 30))
                .padding(.top, 8)
            
            Text("We've sent a 4 digit code to your phone number. Please enter the verification code.")
                .multilineTextAlignment(.center)
                .padding(.top, 8)
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#676870"))
            Spacer()
            
            HStack {
                Spacer()
                VerificationView()
                VerificationView()
                VerificationView()
                VerificationView()
                
                Spacer()
                
            }.padding(.all)
            
            Spacer()
            Spacer()
            Group {
                Text("Didn’t receive the SMS?")
                .font(.custom("Book", size: 14))
                    .foregroundColor(Color(hex:"#676870"))
                Text("Request new code in 00:00")
                           .font(.custom("Book", size: 14))
                           .foregroundColor(Color(hex:"#272833"))
            }
                      
           
            MasterButton(action: {
                
            }, label: "Request new Code".uppercased())
                .padding(.vertical)
        }
    }
}

struct PhoneVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneVerificationView()
    }
}
