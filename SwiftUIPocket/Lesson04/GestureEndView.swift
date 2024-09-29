import SwiftUI
// p356
struct GestureEndView: View {
    @State private var offset: CGSize = CGSizeZero
    
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
            DragGesture()
                .onChanged { value in
                    offset = value.translation
                }
                .onEnded { _ in
                    offset = .zero
                }
            )
    }
}

#Preview {
    GestureEndView()
}
