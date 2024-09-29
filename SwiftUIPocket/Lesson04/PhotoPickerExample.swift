//
//  PhotosPickerExampleView.swift
//  DeviceSample
//

import SwiftUI
import PhotosUI

struct PhotosPickerExampleView: View {
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var selectedPhotosData: [Data] = []
    
    var body: some View {
        NavigationStack {
            ScrollView { // 選択したものをImageにしてスクロールビューで表示
                VStack {
                    ForEach(selectedPhotosData, id: \.self) { photoData in
                        if let image = UIImage(data: photoData) {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // PhotosPicker起動
                    PhotosPicker(selection: $selectedItems, maxSelectionCount: 5,
                                 selectionBehavior: .ordered, matching: .images) {
                        Image(systemName: "photo.on.rectangle.angled")
                    }
                    .onChange(of: selectedItems, initial: false) { _, newItems  in
                        for newItem in newItems {
                            Task {
                                if let data = try? await newItem.loadTransferable(type: Data.self) {
                                    selectedPhotosData.append(data)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PhotosPickerExampleView()
}
