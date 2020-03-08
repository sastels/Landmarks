//
//  ContentView.swift
//  Landmarks
//
//  Created by Stephen Astels on 2020-03-06.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark

  var body: some View {
    VStack {
      MapView(coordinate: landmark.locationCoordinate)
        .edgesIgnoringSafeArea(.top)
        .frame(height: 300.0)
      CircleImage(image: landmark.image)
        .offset(y: -150)
        .padding(.bottom, -130.0)

      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
            .font(.subheadline)
          Spacer()
          Text(landmark.state)
            .font(.subheadline)
        }
      }
      .padding()
      Spacer()
    }
    .navigationBarTitle(Text(landmark.name), displayMode: .inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarkData[3])
  }
}
