import SwiftUI
import MapKit

struct IdentifiablePointAnnotation: Identifiable {
    let id = UUID()
    var annotation: MKPointAnnotation
}

struct MapSectionView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 35.6812, longitude: 139.7671), // 東京駅の座標
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    @State private var annotations: [IdentifiablePointAnnotation] = []
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { place in
            MapMarker(coordinate: place.annotation.coordinate, tint: .red)
        }
        .overlay(
            Color.clear
                .contentShape(Rectangle())
                .onTapGesture { location in
                    let coordinate = convertToCoordinate(location)
                    addAnnotation(at: coordinate)
                }
        )
    }
    
    private func convertToCoordinate(_ location: CGPoint) -> CLLocationCoordinate2D {
        let mapSize = UIScreen.main.bounds.size
        let normalizedPoint = CGPoint(
            x: location.x / mapSize.width,
            y: location.y / mapSize.height
        )
        
        let newLat = region.center.latitude - (normalizedPoint.y - 0.5) * region.span.latitudeDelta
        let newLon = region.center.longitude + (normalizedPoint.x - 0.5) * region.span.longitudeDelta
        
        return CLLocationCoordinate2D(latitude: newLat, longitude: newLon)
    }
    
    private func addAnnotation(at coordinate: CLLocationCoordinate2D) {
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = coordinate
        newAnnotation.title = "ピン \(annotations.count + 1)"
        annotations.append(IdentifiablePointAnnotation(annotation: newAnnotation))
        print("タップした座標: \(coordinate.latitude), \(coordinate.longitude)")
    }
}

struct MapSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MapSectionView()
    }
}
