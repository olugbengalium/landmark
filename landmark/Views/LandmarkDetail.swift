//
//  LandmarkDetail.swift
//  landmark
//
//  Created by Gbenga Abayomi on 20/02/2023.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
            
                .ignoresSafeArea(edges: .top)
                .frame(height: 300.0)
            CircleImage(image: landmark.image)
                     .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.orange)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.blue)
                    Spacer()
                    Text(landmark.state)
                        .fontWeight(.bold)

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    }
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
