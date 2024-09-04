import SwiftUI

/*
SafeAreaとは、端末の画面上で、規程でコンテンツを表示する領域のこと
*/
struct SafeAreaView: View {
    var body: some View {
        Color.blue.ignoresSafeArea(.all, edges: [.top])
    }
}

#Preview {
    SafeAreaView()
}
