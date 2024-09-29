import SwiftUI
// p354
struct GestureView: View {
    @State private var isTapped = false
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundStyle(isTapped ? .red : .blue)
            .gesture(
                TapGesture(count: 2)
                    .onEnded { _ in
                        isTapped = true
                    }
            )
        
        Text(isTapped ? "Tapped!" : "Tap Here!")
            .foregroundStyle(.black)
    }
}

#Preview {
    GestureView()
}
