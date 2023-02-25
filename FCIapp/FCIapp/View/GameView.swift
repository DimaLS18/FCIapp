import SwiftUI
import SwiftUI

struct MatchTabView: View {

    @State private var selectedTab = 0

    var body: some View {
        VStack {
            Picker(selection: $selectedTab, label: Text("")) {
                Text("Предстоящие матчи").tag(0)
                Text("Состоявшиеся матчи").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            if selectedTab == 0 {
                UpcomingMatchesView()
            } else {
                CompletedMatchesView()
            }
        }
    }
}

struct UpcomingMatchesView: View {

    var body: some View {
        Text("Здесь будут отображаться предстоящие матчи")
    }
}

struct CompletedMatchesView: View {

    let games = [
        Game(date: "05.06.2022", time: "18:00", homeTeam: "ФК Филимоново (М)", awayTeam: "ФК Интер", score: "0:8", stadium: "Не указан"),
        Game(date: "12.06.2022", time: "17:15", homeTeam: "ФК Интер", awayTeam: "ФК Динамо", score: "8:0", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "16.06.2022", time: "17:00", homeTeam: "ФК Интер", awayTeam: "ФК НеоФарм", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "03.07.2022", time: "16:30", homeTeam: "ФК Интер", awayTeam: "ФК Эколаб", score: "2:1", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "10.07.2022", time: "19:00", homeTeam: "ФК Интер", awayTeam: "ФК Филимоново", score: "0:1", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "17.07.2022", time: "12:30", homeTeam: "ФК НеоФарм (m)", awayTeam: "ФК Интер", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "24.07.2022", time: "19:00", homeTeam: "ФК Интер", awayTeam: "ФК Париж (М)", score: "6:0", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "31.07.2022", time: "12:00", homeTeam: "ФК Арсенал", awayTeam: "ФК Интер", score: "1:1", stadium: "Стадион \"Заречье\" Павловский Посад"),
        Game(date: "21.08.2022", time: "15:00", homeTeam: "ФК Филимоново-2", awayTeam: "ФК Интер",  score: "1:1", stadium: "Стадион Филимоновский Павловский Посад"),
        Game(date: "28.08.2022", time: "18:00", homeTeam: "ФК Париж", awayTeam: "ФК Интер", score: "2:3", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "04.09.2022", time: "16:00", homeTeam: "ФК Интер", awayTeam: "ФК Олимп", score: "6:2", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "11.09.2022", time: "17:00", homeTeam: "ФК Локомотив", awayTeam: "ФК Интер", score: "1:3", stadium: "Стадион Павлово Покровский Павловский Посад"),
        Game(date: "18.09.2022", time: "16:00", homeTeam: "ФК Филимоново", awayTeam: "ФК Интер", score: "2:3", stadium: "Стадион Старопавловский Павловский Посад"),
        Game(date: "02.10.2022", time: "15:00", homeTeam: "ФК Интер", awayTeam: "ФК Локомотив", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "09.10.2022", time: "15:00", homeTeam: "ФК НеоФарм", awayTeam: "ФК Интер", score: "1:3", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "16.10.2022", time: "15:00", homeTeam: "ФК Интер", awayTeam: "ФК Арсенал", score: "3:0", stadium: "Стадион Ленский Павловский Посад"),
        Game(date: "23.10.2022", time: "15:00", homeTeam: "ФК Эколаб", awayTeam: "ФК Интер", score: "3:3", stadium: "Стадион им. Р.Э. Классона Электрогорск")
    ]

    var body: some View {
        List(games) { game in
            VStack(alignment: .leading) {
                HStack {
                    Text(game.homeTeam)
                    Text(game.score)
                        .fontWeight(.bold)
                    Text(game.awayTeam)
                }
                Text("\(game.date), \(game.time)")
                    .foregroundColor(.gray)
                    .font(.footnote)
                Text(game.stadium)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
                   }
                   .navigationBarTitle("Завершенные матчи")
               }
           }
           
           
           
           
           struct Game: Identifiable {
               let id = UUID()
               let date: String
               let time: String
               let homeTeam: String
               let awayTeam: String
               let score: String
               let stadium: String
           }



//struct MatchTabView: View {
//
//    @State private var selectedTab = 0
//
//    var body: some View {
//        VStack {
//            Picker(selection: $selectedTab, label: Text("")) {
//                Text("Предстоящие матчи").tag(0)
//                Text("Состоявшиеся матчи").tag(1)
//            }
//            .pickerStyle(SegmentedPickerStyle())
//            .padding()
//
//            if selectedTab == 0 {
//                UpcomingMatchesView()
//            } else {
//                CompletedMatchesView()
//            }
//        }
//    }
//}
//
//struct UpcomingMatchesView: View {
//
//    var body: some View {
//        Text("Здесь будут отображаться предстоящие матчи")
//    }
//}
//
//struct CompletedMatchesView: View {
//
//    let games = [
//        Game(date: "05.06.2022", time: "18:00", homeTeam: "ФК Филимоново (М)", awayTeam: "ФК Интер", score: "0:8", stadium: "Не указан"),
//        Game(date: "12.06.2022", time: "17:15", homeTeam: "ФК Интер", awayTeam: "ФК Динамо", score: "8:0", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "16.06.2022", time: "17:00", homeTeam: "ФК Интер", awayTeam: "ФК НеоФарм", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "03.07.2022", time: "16:30", homeTeam: "ФК Интер", awayTeam: "ФК Эколаб", score: "2:1", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "10.07.2022", time: "19:00", homeTeam: "ФК Интер", awayTeam: "ФК Филимоново", score: "0:1", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "17.07.2022", time: "12:30", homeTeam: "ФК НеоФарм (м)", awayTeam: "ФК Интер", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "24.07.2022", time: "19:00", homeTeam: "ФК Интер", awayTeam: "ФК Париж (М)", score: "6:0", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "31.07.2022", time: "12:00", homeTeam: "ФК Арсенал", awayTeam: "ФК Интер", score: "1:1", stadium: "Стадион \"Заречье\" Павловский Посад"),
//        Game(date: "21.08.2022", time: "15:00", homeTeam: "ФК Филимоново-2", awayTeam: "ФК Интер",  score: "1:1", stadium: "Стадион Филимоновский Павловский Посад"),
//        Game(date: "28.08.2022", time: "18:00", homeTeam: "ФК Париж", awayTeam: "ФК Интер", score: "2:3", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "04.09.2022", time: "16:00", homeTeam: "ФК Интер", awayTeam: "ФК Олимп", score: "6:2", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "11.09.2022", time: "17:00", homeTeam: "ФК Локомотив", awayTeam: "ФК Интер", score: "1:3", stadium: "Стадион Павлово Покровский Павловский Посад"),
//        Game(date: "18.09.2022", time: "16:00", homeTeam: "ФК Филимоново", awayTeam: "ФК Интер", score: "2:3", stadium: "Стадион Старопавловский Павловский Посад"),
//        Game(date: "02.10.2022", time: "15:00", homeTeam: "ФК Интер", awayTeam: "ФК Локомотив", score: "1:2", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "09.10.2022", time: "15:00", homeTeam: "ФК НеоФарм", awayTeam: "ФК Интер", score: "1:3", stadium: "Стадион Ленский Павловский Посад"),
//        Game(date: "16.10.2022", time: "15:00", homeTeam: "ФК Интер", awayTeam: "ФК Арсенал", sscore: "3:0", stadium: "Стадион Ленский Павловский Посад
//    ]
//
//    var body: some View {
//        List(games) { game in
//            VStack(alignment: .leading) {
//                HStack {
//                    Text(game.homeTeam)
//                    Text(game.score)
//                        .fontWeight(.bold)
//                    Text(game.awayTeam)
//                }
//                Text("\(game.date), \(game.time)")
//                    .foregroundColor(.gray)
//                    .font(.footnote)
//                Text(game.stadium)
//                    .foregroundColor(.gray)
//                    .font(.footnote)
//            }
//        }
//        .navigationBarTitle("Завершенные матчи")
//    }
//}
//
//
//
//
//struct Game: Identifiable {
//    let id = UUID()
//    let date: String
//    let time: String
//    let homeTeam: String
//    let awayTeam: String
//    let score: String
//    let stadium: String
//}
