//
//  ContentView.swift
//  Landmarks
//
//  Created by Stephen Astels on 2020-03-06.
//  Copyright © 2020 Steve Astels. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
  var body: some View {
    VStack {
      MapView()
        .edgesIgnoringSafeArea(.top)
        .frame(height: 300.0)
      CircleImage()
        .offset(y: -150)
        .padding(.bottom, -130.0)

      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        HStack {
          Text("Joshua Tree National Park")
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
      }
      .padding()
      Spacer()
    }
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail()
  }
}
