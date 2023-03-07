//
//  LandmarkList.swift
//  landmark
//
//  Created by Gbenga Abayomi on 19/02/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks) {
                landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                .navigationTitle("Landmarks")
            }
            //        LandmarkRow(landmark: landmarks[1])
            //        LandmarkRow(landmark: landmarks[2])
            //        LandmarkRow(landmark: landmarks[0])
            
        }
    }
    
    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            LandmarkList()
        }
    }
}
