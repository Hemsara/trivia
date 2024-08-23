//
//  SearchQuizBox.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-24.
//

import SwiftUI

struct SearchQuizBox: View {
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter your invitation code".uppercased()).font(.system(size: 13)).foregroundColor(.gray)
            CustomTextField(text: $text, placeholder: "", iconName: "")
            Spacer()
                .frame(height: 20)
            CustomButton(text: "Participate now".uppercased(), onTap: {})
        }.padding().cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray.opacity(0.3), lineWidth: 1)
            ).padding()
    }
}

#Preview {
    SearchQuizBox(text: .constant(""))
}
