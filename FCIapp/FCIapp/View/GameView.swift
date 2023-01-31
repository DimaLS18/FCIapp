//
//  GameView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 24.01.2023.
//

import SwiftUI

struct CalendarGames:Identifiable {
var id:Int
  let title, value, imageName: String
}


struct GameView: View {
    var games:[CalendarGames] = [
        .init(id: 0, title: "Филимоново", value: "01.05.2023", imageName: "inter"),
        .init(id: 1, title: "Арсенал", value: "01.05.2023", imageName: "inter"),
        .init(id: 2, title: "Эколаб", value: "01.05.2023", imageName: "inter"),
        .init(id: 3, title: "Париж", value: "01.05.2023", imageName: "inter"),
        .init(id: 4, title: "нео", value: "01.05.2023", imageName: "inter"),
        .init(id: 5, title: "Филимионово-2", value: "01.05.2023", imageName: "inter"),
        .init(id: 6, title: "локомотив", value: "01.05.2023", imageName: "inter"),
        .init(id: 0, title: "Филимоново", value: "01.05.2023", imageName: "inter"),
        .init(id: 1, title: "Арсенал", value: "01.05.2023", imageName: "inter"),
        .init(id: 2, title: "Эколаб", value: "01.05.2023", imageName: "inter"),
        .init(id: 3, title: "Париж", value: "01.05.2023", imageName: "inter"),
        .init(id: 4, title: "нео", value: "01.05.2023", imageName: "inter")
    ]
    var body: some View {
        List {
            Text("Календарь игр") .font(.largeTitle)
            ForEach(games, id: \.id) { games in
                HStack{
                    Image(games.imageName)
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black,lineWidth: 2.0))
                    VStack(alignment: .leading) {
                        Text(games.title).font(.headline)
                        Text(games.value).font(.subheadline)
                    }
                }

            }
        }
    }
}
