import SwiftUI

/*
バインディング変数を利用すると、バインディング
変数を通してビュー間で変数の状態を共有すること
ができ、双方向の処理を行うことができます。
*/

struct ParentView: View {
    @State private var isWifiOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: isWifiOn ? "wifi" : "wifi.slash")
                Text(isWifiOn ? "WiFi On" : "WiFi Off")
            }
            
            ChildView(isWifiOn: $isWifiOn)
        }
    }
}

struct ChildView: View {
    @Binding var isWifiOn: Bool
    
    var body: some View {
        Toggle("WiFi", isOn: $isWifiOn)
            .toggleStyle(.button)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
