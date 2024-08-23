import SwiftUI

struct SignupView: View {
    @State private var text = ""
    @State private var password = ""

    var body: some View {
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
                    CustomTextField(text: $text, placeholder: "Full name", iconName: "envelope")
                    CustomTextField(text: $text, placeholder: "E-mail address", iconName: "envelope")
                    CustomTextField(text: $password, placeholder: "Password", iconName: "key")
                    CustomButton(text: "Register") {}
                }
                .padding(20)

                .background(Color.white)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(20)
                .padding()

                Text("Already have an account? Login from here".uppercased()).font(.system(size: 10)).foregroundColor(.white)
            }
        }
    }
}

#Preview {
    SignupView()
}
