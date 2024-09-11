import SwiftUI
import MapKit

// P218
// P221で地図のスタイルを変更した例あり
struct MapShowView: View {
    var coordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2D(latitude: 35.7031528, longitude: 139.57985031)
        }
    }
    
    var region: MKCoordinateRegion {
        get {
            return MKCoordinateRegion(center: coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        }
    }
    var bounds: MapCameraBounds {
        get {
            return MapCameraBounds(centerCoordinateBounds: region, minimumDistance: 1000, maximumDistance: 10000)
        }
    }
    
    @State private var mapSelection: MapFeature?
    
    var body: some View {
        Map(bounds: bounds, interactionModes: .all, selection: $mapSelection)
            .mapStyle(.standard)
    }
}

#Preview {
    MapShowView()
}
