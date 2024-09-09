import SwiftUI

struct PopoverExampleView: View {
    @State private var showPopover = false
    
    var body: some View {
        Button("Show Popover") {
            showPopover = true
        }
        .popover(isPresented: $showPopover,
                 attachmentAnchor: .point(.topLeading),
                 arrowEdge: .bottom) {
            PopoverView(dismissAction: { showPopover = false })
        }
    }
}

struct PopoverView: View {
    var dismissAction: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("X") {
                    dismissAction()
                }.padding([.top, .trailing], 10)
            }
            Text("Popover")
            Spacer()
        }
        .frame(width: 200, height: 50)
    }
}

struct PopoverExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverExampleView()
    }
}
