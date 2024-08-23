//
//  HomeView.swift
//  brainy
//
//  Created by Vehan Hemsara on 2024-08-24.
//

import SwiftUI

struct HomeView: View {
    @State private var invitationCode = ""

    var body: some View {
        Spacer()
        SearchQuizBox(text: $invitationCode)
        Spacer()
    }
}

#Preview {
    HomeView()
}
