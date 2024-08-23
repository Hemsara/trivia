import SwiftUI

struct BaseView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }

            NavigationStack {
                MyQuizView()
            }
            .tabItem {
                Image(systemName: "brain.head.profile")
                Text("My Quizzes")
            }

            NavigationStack {
                HistoryView()
            }
            .tabItem {
                Image(systemName: "list.bullet.clipboard.fill")
                Text("History")
            }

            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.circle.fill")
                Text("Profile")
            }
        }
    }
}

#Preview {
    BaseView()
}
