//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Stephen Astels on 2020-03-07.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
  @State var showFavouritesOnly = true

  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavouritesOnly) {
          Text("Favorites Only")
        }
        ForEach(landmarkData) {
          landmark in
          if !self.showFavouritesOnly || landmark.isFavorite {
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
              LandmarkRow(landmark: landmark)
            }
          }
        }
      }
      .navigationBarTitle(Text("Landmarks"))
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
