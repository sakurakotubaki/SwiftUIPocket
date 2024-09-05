import SwiftUI

/*
Viewの属性を指定する
 backgroundは、ビューの背景スタイル
 foregroundColorは、全景スタイル
*/
struct AttributeView: View {
    var body: some View {
        VStack {
            // normal color
            SimpleView()
                .frame(width: 200, height: 100, alignment: .leading)
                .background(Color.blue)
                .foregroundColor(Color.white)
            
            // gradient color
            SimpleView()
                .frame(width: 200, height: 100, alignment: .leading)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.blue, .blue.opacity(0.5)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .foregroundColor(Color.white)
        }
    }
}

struct SimpleView: View {
    var body: some View {
        Text("Simple View")
    }
}

#Preview {
    AttributeView()
}
