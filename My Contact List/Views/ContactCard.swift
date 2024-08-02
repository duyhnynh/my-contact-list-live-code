//
//  ContactCard.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI

struct ContactCard: View {
    let contact: Contact
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ScrollView {
                VStack{
                    MapView(myLocation: contact.locationCoordinate)
                        .ignoresSafeArea(.all)
                        .frame(height: 250)
                    CircleView(image: contact.image)
                        .offset(y: -90) //Move the circleview in the middle/border
                        .padding(.bottom, -90) //eliminate the padding between, shift up everthing
                    Text(contact.name)
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.white)
                    Image("rmit-logo-white")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                    Group{
                        InforView(text: contact.email, ImageName: "envelope.fill")
                        InforView(text: contact.phone, ImageName: "phone.fill")
                    }
                    .padding()
                }
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContactCard(contact:contacts[0])
}
