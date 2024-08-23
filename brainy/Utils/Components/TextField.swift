import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var iconName: String
    
    var body: some View {
        HStack {
            
                
                
            
            TextField(placeholder, text: $text)
                
                .font(.system(size: 13))
                .background(Color.white)
                
                
        }.padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeholder: "E-mail address", iconName: "envelope")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
