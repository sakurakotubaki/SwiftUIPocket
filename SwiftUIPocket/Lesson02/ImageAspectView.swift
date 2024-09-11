import SwiftUI

/*
 resizable()メソッドは画像のサイズを変更
　frame()メソッドはImage構造体のサイズを
 　指定する場合に使います。
*/
struct ImageAspectView: View {
    let modes: [ContentMode] = [.fit, .fill]
    @State private var contentMode = ContentMode.fit
    
    var body: some View {
        VStack {
            Image("woman")
                .resizable()
                .aspectRatio(contentMode: contentMode)
                .frame(width: 250, height: 200)
                .border(.blue, width: 3)
            
            Picker("ContentMode", selection: $contentMode) {
                ForEach(modes, id: \.self) { mode in
                    Text(String(describing: mode))
                }
                .pickerStyle(WheelPickerStyle())
            }
        }
    }
}

#Preview {
    ImageAspectView()
}
