import SwiftUI

struct KeyboardExampleView: View {
    @State private var mail: String = ""
    @State private var number: String = ""
    
    var body: some View {
        VStack {
            TextField("メールアドレス", text: $mail)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.emailAddress)
                .submitLabel(.done)
                .padding()
            TextField("数字のみ", text: $number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.asciiCapableNumberPad)
                .submitLabel(.done)
                .padding()
        }
    }
}

#Preview {
    KeyboardExampleView()
}
