import SwiftUI
import MapKit

struct CameraPositionView: View {
    @State var cameraPosition: MapCameraPosition = MapCameraPosition.camera(
        MapCamera(centerCoordinate: CLLocationCoordinate2D(latitude: 35.6809591, longitude: 139.7673068), distance: 3729, heading: 92, pitch: 70))
    
    var body: some View {
        Map(position: $cameraPosition)
            .mapControls {
                MapUserLocationButton()
                MapCompass()
                MapScaleView()
                MapPitchToggle()
            }
            .mapStyle(.standard)
    }
}

#Preview {
    CameraPositionView()
}
