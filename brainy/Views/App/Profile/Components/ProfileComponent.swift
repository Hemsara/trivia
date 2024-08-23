//
//  ProfileComponent.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-24.
//

import SwiftUI

struct ProfileComponent: View {
    let title: String
    let value: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title.uppercased()).font(.system(size: 14)).bold().foregroundColor(.pink)
                Spacer()
                Text("tap tp change".uppercased()).font(.system(size: 12)).foregroundColor(.gray)
            }

            Spacer()
                .frame(height: 10)
            Divider()
            Spacer()
                .frame(height: 10)
            Text(value).font(.system(size: 15))

        }.padding().cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray.opacity(0.2), lineWidth: 1)
            ).frame(width: .infinity).shadow(radius: 8)
    }
}

#Preview {
    ProfileComponent(title: "usename", value: "vhemsara")
}
