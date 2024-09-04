# SwiftUI Tutorial

### P126~
```swift
import SwiftUI

// Viewは画面を作る構造体
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

/*
Previewは、UIをプレビューで表示する構造体。
マクロとして登録されてるので、「＃」をつけて
記述。マクロとは、よく利用する機能を登録して
おく機能で、繰り返し利用する処理を簡潔に、
記述することができる。
*/
#Preview {
    ContentView()
}
```