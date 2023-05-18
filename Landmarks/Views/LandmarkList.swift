//
//  landmarkList.swift
//  Landmarks
//
//  Created by DaN SoGbEy on 18/05/2023.
//

import SwiftUI

struct LandmarkList: View {
    
    
    var body: some View {
        NavigationStack {
            List(landmarks){ landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            .toolbarBackground(Color.yellow, for: .navigationBar)
        }
    }
}

struct landmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
