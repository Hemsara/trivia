import SwiftUI

struct LoginView: View {
    @State private var text = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.pink, Color.cyan]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 110)

                    VStack {
                        CustomTextField(text: $text, placeholder: "E-mail address", iconName: "envelope")
                        CustomTextField(text: $password, placeholder: "Password", iconName: "key")
                        NavigationLink(destination: BaseView()) {
                            CustomButton(text: "Login") {}
                        }
                    }
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()

                    Text("Don't have an account? Register from here".uppercased())
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
