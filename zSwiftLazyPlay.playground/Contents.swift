import UIKit

var greeting = "Hello, playground"

struct CalculatorTimeWAster {
    static func calculateGamesPLayed() -> Int {
        var games: [Int] = []
        for i in 1...4000 {games.append(i)}
        return games.last!
    }
}
struct Player {
    var name: String
    var team: String
    var position: String
    //var gamesplayed0 = CalculatorTimeWAster.calculateGamesPLayed()
    
    lazy var gamesplayed = {
        return CalculatorTimeWAster.calculateGamesPLayed()
    }()
        
    
    lazy var introduction1 = {
       return "Now entering the game \(name), \(position) for the \(team)"
    }()
}

var jordan = Player(name: "MJ", team: "guard", position: "positionguard")
var pippen = Player(name: "pip", team: "guard", position: "positionguard")
var rodman = Player(name: "rodman", team: "guard", position: "positionguard")
var harper = Player(name: "harper", team: "guard", position: "positionguard")

print(jordan.introduction1)
print(jordan.gamesplayed)
