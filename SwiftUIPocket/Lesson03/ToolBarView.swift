import SwiftUI

struct ToolBarView: View {
    @State private var name = ""
    @FocusState private var focused: Bool
    
    var body: some View {
        TextField("名前を入力してください", text: $name)
            .textFieldStyle(.roundedBorder)
            .focused($focused)
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Spacer()
                    Button("close") {
                        focused = false
                    }
                }
            }
    }
}

#Preview {
    ToolBarView()
}
