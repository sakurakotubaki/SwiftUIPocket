import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct UniversityView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.7090, longitude: 139.7216), // 早稲田大学の正門付近
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    
    let locations = [
        Location(name: "早稲田大学正門", coordinate: CLLocationCoordinate2D(latitude: 35.7090, longitude: 139.7216))
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapAnnotation(coordinate: location.coordinate) {
                VStack {
                    Text("入り口はここ！")
                    Image(systemName: "arrowshape.right")
                }
                .foregroundStyle(.blue)
                .padding()
                .background(in: .capsule)
            }
        }
    }
}

