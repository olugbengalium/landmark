//
//  LandmarkRow.swift
//  landmark
//
//  Created by Gbenga Abayomi on 19/02/2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 90, height: 90)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
    Group{
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
        LandmarkRow(landmark: landmarks[0])
        }
    .previewLayout(.fixed(width: 300, height: 70))
        }
}
