import SwiftUI

/**
 p264
 LabeledContentは任意のビューにラベルを
 付与して１行のコンテンツを表示する構造体
 */
struct LabelView: View {
    @State var count = 0
    
    var body: some View {
        Form {
            LabeledContent {
                Stepper("\(count)", value: $count, in: 0...10)
            } label: {
                Label("Count", systemImage: "hammer")
            }
        }
    }
}

#Preview {
    LabelView()
}
