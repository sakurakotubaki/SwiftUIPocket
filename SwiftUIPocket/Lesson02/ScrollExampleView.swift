import SwiftUI

struct ScrollExampleView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(0..<10) { index in
                        Text("\(index)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(.red)
                            .padding( .trailing)
                    }
                }
            }
            .frame(height: 400)
            
            ScrollView(Axis.Set.horizontal) {
                HStack() {
                    ForEach(0..<10) { index in
                        Text("\(index)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .frame(width: 100, height: 100)
                            .background(.red)
                            .padding( .trailing)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ScrollExampleView()
}
