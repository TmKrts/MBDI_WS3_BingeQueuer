//
//  SeriesDetail.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct SeriesDetail: View {
    var series: Series
    
    var body: some View {
        let spacerSize: CGFloat = 0
        
        ScrollView {
            VStack (alignment: .leading) {
                CircleImage(image: Image(series.image))
                    .offset(y: -spacerSize)
                    .padding(.bottom, -spacerSize)
                    .frame(maxWidth: UIScreen.main.bounds.width,
                           maxHeight: UIScreen.main.bounds.height)
                Text(series.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding([.top, .leading, .trailing])
                Text("Seasons: \(series.seasons)")
                    .padding(.leading)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                Text("About \(series.title)")
                    .padding([.top, .leading])
                    .font(.title3)
                Text(series.description)
                    .padding(.leading)
                Spacer()
            }
        }
        .navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SeriesDetail_Previews: PreviewProvider {
    static var previews: some View {
        SeriesDetail(series: seriesSourceList[4])
    }
}
