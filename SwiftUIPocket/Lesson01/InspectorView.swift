import SwiftUI

/*
inspector(isPresentedは、メニュー形式で
利用できる形式で部分的にモーダルを表示するメソッド
*/

struct InspectorViewExample: View {
    @State private var isPressed = false
    
    var body: some View {
        ZStack {
            Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.3)
                .opacity(isPressed ? 1 : 0)
            
            Button("Present View") {
                isPressed = true
            }
            .opacity(isPressed ? 0 : 1)
            .inspector(isPresented: $isPressed) {
                InspectorViewChild(dismissAction: {
                    isPressed = false
                })
            }
        }
    }
}

#Preview {
    InspectorViewExample()
}

// show modal view
struct InspectorViewChild: View {
    
    var dismissAction: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer().frame(height: 10)
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
            Button("Dismiss") {
                dismissAction()
            }
            Spacer()
        }
    }
}
