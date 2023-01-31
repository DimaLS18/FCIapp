//
//  ContentView.swift
//  FCIapp
//
//  Created by Dima Kovrigin on 31.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
           MainView()
                .tabItem {
                    Label("Главная", systemImage: "soccerball")
                }
            GameView()
                .tabItem {
                    Label("Игры", systemImage: "sportscourt")
                }
            TeamView()
                .tabItem {
                    Label("Команда", systemImage: "figure.soccer")
                }
            TournamentView()
                .tabItem {
                    Label("Таблица", systemImage: "trophy")
                }
            AboutUsView()
                .tabItem {
                    Label("О нас", systemImage: "mappin.and.ellipse")
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
