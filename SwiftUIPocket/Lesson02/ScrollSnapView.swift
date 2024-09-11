import SwiftUI

struct ScrollSnapView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10) { i in
                    Capsule()
                        .fill(Color(red: .random(in: 0...1),
                                    green: .random(in: 0...1),
                                    blue: .random(in: 0...1)))
                        .frame(width: 100, height: 100)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .padding()
    }
}

#Preview {
    ScrollSnapView()
}
