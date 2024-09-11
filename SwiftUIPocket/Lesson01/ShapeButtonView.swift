import SwiftUI

// background modifierは背景を指定
struct ShapeButtonView: View {
    @State private var active: Bool = false
    
    var body: some View {
        VStack {
            Button(action: { active.toggle() }, label: {
                Text(active ? "Active": "Inactive")
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
            }
            )
            .background( Capsule().fill(active ? Color.green : Color.red) )
        }
    }
}

#Preview {
    ShapeButtonView()
}
