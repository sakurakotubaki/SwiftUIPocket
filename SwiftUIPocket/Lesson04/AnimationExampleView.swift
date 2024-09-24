import SwiftUI

struct AnimationExampleView: View {
    @State private var isAnimate = false
    
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .rotationEffect(isAnimate ? .degrees(45) : .zero)
                    .animation(.easeInOut(duration: 1.0), value: isAnimate)
            }
            
            Button(action: {
                isAnimate.toggle()
            }) {
                Text(isAnimate ? "リセット" : "回転")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    AnimationExampleView()
}
