//
//  AddAddressView.swift
//  ProjectOne
//
//  Created by Sharif on 27/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
import MapKit
struct AddAddressView :  View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View{
       
        ZStack(){
                MapView()
           
                ZStack{
                  
                    Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
                    VStack{
                        Text("Select your location\nform the map")
                            .multilineTextAlignment(.center)
                            .font(.custom("Heavy", size: 30))
                        Text("Move the pin on the map to find your location\nand select the delivery address.")
                            .multilineTextAlignment(.center)
                            .font(.custom("Book", size: 14))
                    }
                }.frame(height:UIScreen.height/2-50,alignment: .bottom)
                
                
            
            .navigationBarColor(.clear)
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss();
            }, label: {
                Image("arrow-left-black")
                    .renderingMode(.original)
            }))
        }
    }
}

struct AddAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAddressView()
    }
}
struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
    }
}
