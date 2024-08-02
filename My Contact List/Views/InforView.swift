//
//  InforView.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI

struct InforView: View {
    //we create properties like this to ez fill many texts and images. Limit the code length.
    let text: String
    
    let ImageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName:ImageName)
                        .foregroundColor(Color("rmit-red"))
                    Text(text)
                        .foregroundStyle(.black)
                }
            )
    }
}

#Preview {
    //we have to put the InforView into Vstack for display both. Because Preview only shows one view at a time.
    VStack{
        InforView(text: "tom.huynh@rmit.edu.vn", ImageName: "envelope.fill")
        InforView(text: "1234556789", ImageName: "phone.fill")
    }
   
}
