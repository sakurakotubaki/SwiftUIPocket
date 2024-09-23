import SwiftUI
import MapKit

struct OverlayView: View {
    // 吉祥寺駅の座標
    let coordinate = CLLocationCoordinate2D(latitude: 35.7031, longitude: 139.5800)
    
    // MapCameraBoundsを計算
    var bounds: MapCameraBounds {
        let region = MKCoordinateRegion(
            center: coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000
        )
        return MapCameraBounds(
            centerCoordinateBounds: region,
            minimumDistance: 1000,
            maximumDistance: 10000
        )
    }
    
    var body: some View {
        Map(bounds: bounds, interactionModes: .all) {
            // 吉祥寺駅を中心に半径500mの円を描画
            MapCircle(center: coordinate, radius: 500)
                .strokeStyle(style: .init(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: []))
                .foregroundStyle(.blue.opacity(0.3))
                .mapOverlayLevel(level: .aboveLabels)
            
            // 吉祥寺駅の位置にマーカーを追加
            Marker("吉祥寺駅", coordinate: coordinate)
        }
    }
}

#Preview {
    OverlayView()
}
