import SwiftUI

/**
 onAppearメソッドはビューば表示されたときの
 処理を指定。値のプリセットなど、UI表示時の
 処理を行う場合に利用
 
 ※プリセットとは、あらかじめ設定された状態や、調整された状態を記録したものです。
 */
struct ShowOnAppearView: View {
    @State private var name = ""
    
    var body: some View {
        TextField("名前を入力してください", text: $name)
            .onAppear {
                // 表示時に値をリセット
                name = "むく"
            }
    }
}

#Preview {
    ShowOnAppearView()
}
