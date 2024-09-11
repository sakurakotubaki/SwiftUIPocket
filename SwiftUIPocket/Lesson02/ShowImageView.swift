import SwiftUI

// P174を参照
struct ShowImageView: View {
    var body: some View {
        VStack {
            Image("woman")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 250, height: 200)
                
            
            Image("woman")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.top, 50)
        }
    }
}

#Preview {
    ShowImageView()
}
