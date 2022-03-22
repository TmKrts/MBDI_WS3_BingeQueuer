//
//  ContentView.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Tim Kaerts on 22/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State var serieDataList = seriesSourceList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(serieDataList, id: \Series.id) { series in
                    NavigationLink(
                        destination: SeriesDetail(series: series)
                    ) { BingeRow(series: series) }
                }
                .onDelete(perform: delete)
            }
            .navigationBarTitle("Binge Queuer")
            .toolbar {
                EditButton()
            }
        }
    }
    func delete(at offsets: IndexSet) {
        serieDataList.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
