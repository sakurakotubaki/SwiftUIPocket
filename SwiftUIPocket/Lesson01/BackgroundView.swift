import SwiftUI

/*
@Stateは、値が変更されるたびに、ビューを
更新する。
*/
struct BackgroundView: View {
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack {
            SimpleView()
                .frame(width: 200, height: 100, alignment: .leading)
                .background(backgroundColor)
                .foregroundColor(Color.white)
            
            Button("Button") {
                backgroundColor = Color.red
            }
        }
    }
}

#Preview {
    BackgroundView()
}
