import SwiftUI

struct Fruit: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
}

struct SearchExampleView: View {
    
    var fruits = [
        Fruit(name: "Apple"), Fruit(name: "Banana"),
        Fruit(name: "Kiwi"),
        Fruit(name: "Orange"),
        Fruit(name: "Pear"),
    ]
    
    @State private var searchword = ""
    var searchResults: [Fruit] {
        get {
            return searchword.isEmpty ? fruits : fruits.filter { $0.name.contains(searchword) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.id) { fruit in
                    NavigationLink {
                        Text(fruit.name)
                    } label: {
                        Text(fruit.name)
                    }
                }
            }
            .searchable(text: $searchword, placement: SearchFieldPlacement.navigationBarDrawer(displayMode: .always), prompt: "Search fruit")
        }
    }
}

#Preview {
    SearchExampleView()
}
