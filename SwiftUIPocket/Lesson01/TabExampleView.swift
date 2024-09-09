import SwiftUI

struct TabExampleView: View {
    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Image(systemName: "1.circle")
                }
                .badge(1)
            
            SecondView()
                .tabItem {
                    Image(systemName: "2.circle")
                }
            
            ThirdView()
                .tabItem {
                    Image(systemName: "3.circle")
                }
        }
    }
}

#Preview {
    TabExampleView()
}

struct FirstView: View {
    var body: some View {
        Text("Page 1")
    }
}

struct SecondView: View {
    var body: some View {
        Text("Page 2")
    }
}

struct ThirdView: View {
    var body: some View {
        Text("Page 3")
    }
}
