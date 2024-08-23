//
//  MyQuizComponent.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-24.
//

import SwiftUI

struct MyQuizComponent: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Flutter Knowledge center").font(.system(size: 16))

            Spacer()
                .frame(height: 10)
            Divider()
            Spacer()
                .frame(height: 10)
            HStack(spacing: 13) {
                Text("6 Questions".uppercased()).font(.system(size: 13)).foregroundColor(.gray)
                Text("July 14, 2024".uppercased()).font(.system(size: 13)).foregroundColor(.gray)
                HStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.green)
                        .aspectRatio(1, contentMode: .fit).frame(width: 10, height: 10)

                    Text("Published".uppercased()).font(.system(size: 13)).foregroundColor(.green)
                }
            }

        }.padding().cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray.opacity(0.3), lineWidth: 1)
            ).frame(width: .infinity)
    }
}

#Preview {
    MyQuizComponent()
}
