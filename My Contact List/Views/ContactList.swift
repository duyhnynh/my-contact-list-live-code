//
//  ContactList.swift
//  My Contact List
//
//  Created by Duy Huynh on 2/8/24.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        
        NavigationView {
            List(contacts) { contact in
                NavigationLink{
                    ContactCard(contact: contact)
                }label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("SSET Contact 📕")
            }
        }
    }
}

#Preview {
    ContactList()
}
