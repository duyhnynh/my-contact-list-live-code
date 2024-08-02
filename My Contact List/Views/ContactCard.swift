//
//  ContactCard.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                CircleView()
                Text("Tom Huynh")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(.white)
                Image("rmit-logo-white")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                Group{
                    InforView(text: "tom.huynh@rmit.edu.vn", ImageName: "envelope.fill")
                    InforView(text: "1234556789", ImageName: "phone.fill")
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContactCard()
}
