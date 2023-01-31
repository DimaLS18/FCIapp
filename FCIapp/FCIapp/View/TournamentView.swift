//
//  TableView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 24.01.2023.
//

import SwiftUI

struct TournamentView: View {
    var body: some View {

        HStack {
          WebView(url: URL(string: "https://ffpp.nagradion.ru/tournament32005/table")!)
                .ignoresSafeArea(edges: .top)
        }
    }
}

struct TournamentView_Previews: PreviewProvider {
    static var previews: some View {
        TournamentView()
    }
}



