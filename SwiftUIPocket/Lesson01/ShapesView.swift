import SwiftUI

// 2D図形の作成
struct ShapesView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                // 円
                Circle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                // カプセル型
                Capsule()
                    .fill(.yellow)
                    .frame(width: 100, height: 50)
                // 短径
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                
            }
            TextField("Search", text: .constant(""))
                .padding()
                .frame(width: 300)
                .background {
                    Capsule()
                        .strokeBorder(Color.black, lineWidth: 1.0)
                }
        }
    }
}

#Preview {
    ShapesView()
}
