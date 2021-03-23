//
//  SearchView.swift
//  ProjectOne
//
//  Created by Sharif on 23/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct SearchView : View{
    @State var navigationBarVisible = true
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View{
            ZStack {
                Color.black
                Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
                VStack() {
                    Text("Find your watch")
                        .font(.custom("Heavy", size: 30))
                        .padding(.top,40)
                    Text("Search through more than 1000+ watches")
                        .font(.custom("Book", size: 14))
                    UnderlineTextField(lable:"Search",text: .constant(""),search: true)
                    
                    VStack(alignment:.leading){
                        SearchSuggestion()
                        SearchSuggestion()
                        SearchSuggestion()
                    }
                    Spacer()
                }
                .navigationBarTitle("SEARCH",displayMode: .inline)
                .navigationBarColor(.black)
                .navigationBarItems(leading: EmptyView(),trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss();
                }, label: {
                    Image("close")
                }))
            }
        
        
        
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
