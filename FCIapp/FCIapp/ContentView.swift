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
            GameScheduleView(games: [     Game(homeTeam: "ЦСКА", homeTeamLogo: "inter", awayTeam: "Динамо", awayTeamLogo: "inter", date: Date(), score: "2:1"),
                                          Game(homeTeam: "Спартак", homeTeamLogo: "inter", awayTeam: "Локомотив", awayTeamLogo: "inter", date: Date().addingTimeInterval(86400), score: nil),
                                          Game(homeTeam: "Зенит", homeTeamLogo: "inter", awayTeam: "Краснодар", awayTeamLogo: "inter", date: Date().addingTimeInterval(86400*2), score: nil)
                                    ])
                .tabItem {
                    Label("Игры", systemImage: "sportscourt")
                }
            PlayersByPositionView(players: [
                Player(name: "Балакин Алексей", number: 7, birthday: Date(), position: "Forward", avatar: "bal"),
                Player(name: "Бекулов Дмитрий", number: 11, birthday: Date(), position: "Midfielder", avatar: "bek"),
                Player(name: "Бекулов Сагит", number: 3, birthday: Date(), position: "Defender", avatar: "saga"),
                Player(name: "Вышков Николай", number: 88, birthday: Date(), position: "Forward", avatar: "kolyn"),
                Player(name: "Вязников Григорий", number: 30, birthday: Date(), position: "Defender", avatar: "gri"),
                Player(name: "Громов Илья", number: 10, birthday: Date(), position: "Midfielder", avatar: "grom"),
                Player(name: "Гусев Никита", number: 30, birthday: Date(), position: "Defender", avatar: "gus"),
                Player(name: "Еременко Олег", number: 17, birthday: Date(), position: "Defender", avatar: "erema"),
                Player(name: "Зуйченко Денис", number: 41, birthday: Date(), position: "Defender", avatar: "zui"),
                Player(name: "Казарян Давид", number: 98, birthday: Date(), position: "Midfielder", avatar: "dav"),
                Player(name: "Каранов Станислав", number: 62, birthday: Date(), position: "Midfielder", avatar: "karS"),
                Player(name: "Каранов Тимофей", number: 94, birthday: Date(), position: "Midfielder", avatar: "karT"),
                Player(name: "Кладов Владимир", number: 18, birthday: Date(), position: "Defender", avatar: "klad"),
                Player(name: "Ковригин Дмитрий", number: 1, birthday: Date(), position: "Goalkeeper", avatar: "kovr"),
                Player(name: "Костерев Валерий", number: 96, birthday: Date(), position: "Goalkeeper", avatar: "valer"),
                Player(name: "Котляров Максим", number: 7, birthday: Date(), position: "Midfielder", avatar: "kotl"),
                Player(name: "Левенко Денис", number: 19, birthday: Date(), position: "Полузащитник", avatar: "levenko"),
                Player(name: "Макляев Кирилл", number: 21, birthday: Date(), position: "Нападающий", avatar: "makl"),
                Player(name: "Молофеев Роман", number: 27, birthday: Date(), position: "Защитник", avatar: "roman"),
                Player(name: "Олимов Жохонгир", number: 9, birthday: Date(), position: "Нападающий", avatar: "jordan"),
                    Player(name: "Пронюшкин Михаил", number: 8, birthday: Date(), position: "Midfielder", avatar: "prony"),
                    Player(name: "Самохин Алексей", number: 88, birthday: Date(), position: "Goalkeeper", avatar: "sam"),
                    Player(name: "Санин Вадим", number: 13, birthday: Date(), position: "Defender", avatar: "vad"),
                    Player(name: "Смехнов Иван", number: 39, birthday: Date(), position: "Forward", avatar: "smex"),
                    Player(name: "Смолин Даниил", number: 10, birthday: Date(), position: "Midfielder", avatar: "smol"),
                    Player(name: "Судоргин Илья", number: 18, birthday: Date(), position: "Defender", avatar: "patr"),
                    Player(name: "Тимохин Алексей", number: 4, birthday: Date(), position: "Defender", avatar: "rost"),
                    Player(name: "Тюмин Алексей", number: 5, birthday: Date(), position: "Defender", avatar: "tu"),
                    Player(name: "Тюпаев Александр", number: 25, birthday: Date(), position: "Defender", avatar: "tup"),
                    Player(name: "Унольд Максим", number: 11, birthday: Date(), position: "Defender", avatar: "unold"),
                    Player(name: "Филимонов Кирилл", number: 88, birthday: Date(), position: "Forward", avatar: "fil"),
                    Player(name: "Фролов Дмитрий", number: 11, birthday: Date(), position: "Midfielder", avatar: "frol"),
                    Player(name: "Фрольцов Денис", number: 20, birthday: Date(), position: "Defender", avatar: "frolez"),
                    Player(name: "Шешин Сергей", number: 38, birthday: Date(), position: "Midfielder", avatar: "sheshin")
            ])
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
