//
//  TeamView.swift
//  fcInterApps
//
//  Created by Dima Kovrigin on 24.01.2023.
//

import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let number: Int
    let birthday: Date
    let position: String
    let avatar: String

}

struct PlayersByPositionView: View {
    let players: [Player]
    let teamImage = Image("1")

    var body: some View {
        List {
            Section(header:
                VStack {
                    teamImage
                        .resizable()
                        .scaledToFill()
                       .frame(height: 200)

                    Spacer()
                }
            ) {
                Section(header: Text("Forwards")) {
                    PlayerRowView(players: players.filter { $0.position == "Forward" })
                }
                Section(header: Text("Midfielders")) {
                    PlayerRowView(players: players.filter { $0.position == "Midfielder" })
                }
                Section(header: Text("Defenders")) {
                    PlayerRowView(players: players.filter { $0.position == "Defender" })
                }
                Section(header: Text("Goalkeepers")) {
                    PlayerRowView(players: players.filter { $0.position == "Goalkeeper" })
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}


struct PlayerRowView: View {
    let players: [Player]

    var body: some View {
           ScrollView(.horizontal, showsIndicators: false) {
               HStack(alignment: .top, spacing: 10) {
                   ForEach(players) { player in
                       PlayerView(player: player)
                       Spacer() // add a spacer between each player view
                   }
               }
               .padding(.horizontal)
               .frame(height: 200)
           }
       }
   }


struct PlayerView: View {
    let player: Player

    var body: some View {
        VStack {
            Image(player.avatar)
                .resizable()
                .scaledToFit()
                .cornerRadius(10) // добавляем скругление углов
                .shadow(radius: 5) // добавляем тень
            Text(player.name)
                .font(.headline)
            Text("Number: \(player.number)")
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10) // добавляем скругление углов для всей ячейки
        .shadow(radius: 5) // добавляем тень для всей ячейки
    }


    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
}

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()


struct PlayersByPositionView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersByPositionView(players: [
            Player(name: "Балакин Алексей", number: 7, birthday: Date(), position: "Forward", avatar: "1"),
            Player(name: "Бекулов Дмитрий", number: 11, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Бекулов Сагит", number: 3, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Вышков Николай", number: 88, birthday: Date(), position: "Forward", avatar: "1"),
            Player(name: "Вязников Григорий", number: 30, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Громов Илья", number: 10, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Гусев Никита", number: 30, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Еременко Олег", number: 17, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Зуйченко Денис", number: 41, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Казарян Давид", number: 98, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Каранов Станислав", number: 62, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Каранов Тимофей", number: 94, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Кладов Владимир", number: 18, birthday: Date(), position: "Defender", avatar: "1"),
            Player(name: "Ковригин Дмитрий", number: 1, birthday: Date(), position: "Goalkeeper", avatar: "1"),
            Player(name: "Костерев Валерий", number: 96, birthday: Date(), position: "Goalkeeper", avatar: "1"),
            Player(name: "Котляров Максим", number: 7, birthday: Date(), position: "Midfielder", avatar: "1"),
            Player(name: "Левенко Денис", number: 19, birthday: Date(), position: "Полузащитник", avatar: "1"),
            Player(name: "Макляев Кирилл", number: 21, birthday: Date(), position: "Нападающий", avatar: "1"),
            Player(name: "Молофеев Роман", number: 27, birthday: Date(), position: "Защитник", avatar: "1"),
            Player(name: "Олимов Жохонгир", number: 9, birthday: Date(), position: "Нападающий", avatar: "1"),
                Player(name: "Пронюшкин Михаил", number: 8, birthday: Date(), position: "Midfielder", avatar: "1"),
                Player(name: "Самохин Алексей", number: 88, birthday: Date(), position: "Goalkeeper", avatar: "1"),
                Player(name: "Санин Вадим", number: 13, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Смехнов Иван", number: 39, birthday: Date(), position: "Forward", avatar: "1"),
                Player(name: "Смолин Даниил", number: 10, birthday: Date(), position: "Midfielder", avatar: "1"),
                Player(name: "Судоргин Илья", number: 18, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Тимохин Алексей", number: 4, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Тюмин Алексей", number: 5, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Тюпаев Александр", number: 25, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Унольд Максим", number: 11, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Филимонов Кирилл", number: 88, birthday: Date(), position: "Forward", avatar: "1"),
                Player(name: "Фролов Дмитрий", number: 11, birthday: Date(), position: "Midfielder", avatar: "1"),
                Player(name: "Фрольцов Денис", number: 20, birthday: Date(), position: "Defender", avatar: "1"),
                Player(name: "Шешин Сергей", number: 38, birthday: Date(), position: "Midfielder", avatar: "1")
            ])

    }
}
