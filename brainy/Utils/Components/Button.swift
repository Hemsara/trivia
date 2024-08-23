//
//  CustomButton.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-23.
//

import SwiftUI

struct CustomButton: View {
    let text: String
       let onTap: () -> Void
       
    
    var body: some View {
        Button(action: {
            onTap()
        }) {
            Text(text).padding()  .foregroundColor(.white).font(.system(size: 12)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity) .

            background(
                LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.pink]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            )
            
            
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Hello world") {
                   print("Button tapped")
               }    }
}
