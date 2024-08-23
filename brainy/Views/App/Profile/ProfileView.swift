//
//  ProfileView.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    ProfileComponent(title: "username", value: "vhemsara")
                    ProfileComponent(title: "full name", value: "Vehan Hemsara")
                    ProfileComponent(title: "Telephone number", value: "075-345-2827")

                    Spacer().frame(height: 5)
                    CustomButton(text: "Logout".uppercased(), onTap: {})
                }
                .padding()
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
