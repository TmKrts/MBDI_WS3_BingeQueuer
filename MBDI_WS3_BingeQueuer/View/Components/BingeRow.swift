//
//  BingeRow.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct BingeRow: View {
    var series: Series
    
    var body: some View {
        HStack {
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
}

struct BingeRow_Previews: PreviewProvider {
    static var previews: some View {
        BingeRow(series: seriesSourceList[4])
    }
}
