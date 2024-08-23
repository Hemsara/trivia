import SwiftUI

struct MyQuizView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    MyQuizComponent()
                    MyQuizComponent()
                    MyQuizComponent()
                    MyQuizComponent()
                }
                .padding()
            }
            .navigationTitle("My Quizzes")
        }
    }
}

#Preview {
    MyQuizView()
}
