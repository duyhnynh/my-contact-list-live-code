//
//  CircleView.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Image("tom-huynh")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(
            Circle()
                .stroke(Color("rmit-red"), lineWidth: 1    )
            )
            .shadow(color: .white, radius: 7)
    }
}

#Preview {
    CircleView()
}
