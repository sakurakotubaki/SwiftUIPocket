import SwiftUI

// p318
struct WithAnimationView: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .scaleEffect(scale)
            }
            .frame(width: 200, height: 200)
            
            Button("Start") {
                withAnimation(.easeIn(duration: 1)) {
                    scale = scale == 1 ? 2 : 1
                }
            }
        }
    }
}

#Preview {
    WithAnimationView()
}
