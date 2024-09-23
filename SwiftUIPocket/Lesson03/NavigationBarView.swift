import SwiftUI

struct NavigationBarView: View {
    @State var name = ""
    
    var body: some View {
        Form {
            Section(header: Text("プロフィール")) {
                Text("Name").font(.headline)
                TextField("名前を入力してください", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding(4)
            }
        }
        .navigationTitle("Setting")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationBarView()
}
