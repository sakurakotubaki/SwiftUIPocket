import SwiftUI

/*
sheet(isPresented:)メソッドは、モーダルの
表示/非表示を行うメソッドです。
false ->trueで表示
*/
struct ModalView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button("Present View") {
            isPressed = true
        }
        .sheet(isPresented: $isPressed) {
            PresentedView(dismissAction: {
                isPressed = false
            })
        }
    }
}

#Preview {
    ModalView()
}

// show modal view
struct PresentedView: View {
    var dismissAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Present View")
            Button("Dissmiss") {
                dismissAction()
            }
        }
    }
}
