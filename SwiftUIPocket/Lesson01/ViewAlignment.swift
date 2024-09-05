import SwiftUI

/*
Alignmentは、オブジェクトの位置を調整する
時に使う
*/
struct ViewAlignment: View {
    var body: some View {
        VStack {
            // top guides
            HStack {
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .topLeading)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .top)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .topTrailing)
            }
            // middle guides
            HStack {
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .leading)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .center)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .trailing)
            }
            // bottom guides
            HStack {
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .bottom)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .bottom)
                Rectangle()
                                             .frame(width: 20,height: 20)
                    .frame(alignment: .bottomTrailing)
            }
        }
    }
}

#Preview {
    ViewAlignment()
}
