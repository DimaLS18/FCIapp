import SwiftUI

struct Game: Identifiable {
    let id = UUID()
    let homeTeam: String
    let homeTeamLogo: String
    let awayTeam: String
    let awayTeamLogo: String
    let date: Date
    let score: String?

    var dateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: date)
    }

    var timeString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }

    var isFinished: Bool {
        return score != nil
    }
}

struct GameScheduleView: View {
    let games: [Game]

    var body: some View {
        List {
            ForEach(games) { game in
                GameRow(game: game)
            }
        }
        .navigationBarTitle("Расписание матчей")
    }
}

struct GameRow: View {
    let game: Game

    var body: some View {
        HStack(spacing: 20) {
            Image(game.homeTeamLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            if game.isFinished {
                Text(game.score ?? "")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            } else {
                Text("СКОРО")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }

            Image(game.awayTeamLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }
        .padding(.vertical, 8)

        HStack {
            Spacer()
            Text(game.dateString)
                .font(.caption)
            Spacer()
            Text(game.timeString)
                .font(.caption)
            Spacer()
        }
    }
}

struct GameScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        let games = [
            Game(homeTeam: "ЦСКА", homeTeamLogo: "cska_logo", awayTeam: "Динамо", awayTeamLogo: "dynamo_logo", date: Date(), score: "2:1"),
            Game(homeTeam: "Спартак", homeTeamLogo: "spartak_logo", awayTeam: "Локомотив", awayTeamLogo: "lokomotiv_logo", date: Date().addingTimeInterval(86400), score: nil),
            Game(homeTeam: "Зенит", homeTeamLogo: "zenit_logo", awayTeam: "Краснодар", awayTeamLogo: "krasnodar_logo", date: Date().addingTimeInterval(86400*2), score: nil)
        ]
        return GameScheduleView(games: games)
    }
}
