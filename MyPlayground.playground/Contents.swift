import UIKit

var greeting = "Hello, playground"

enum SocialPlatform: String {
    case twitter = "44Billion?"
    case facebook  = "nope"
    case insta = "pretty pictures"
    case linkedin = "work stuff"
}
enum SocialPlatform2: String, CaseIterable {
    case twitter = "44Billion?"
    case facebook  = "nope"
    case insta = "pretty pictures"
    case linkedin = "work stuff"
}

func shareImage(on platform: SocialPlatform) {
    switch platform {
    case .twitter:
        print("This is twitter")
    case .facebook:
        print("This is facebook")
    case .insta:
        print("This is insta")
    case .linkedin:
        print("This is linkedin")
    }
}

shareImage(on: .twitter)//with enum able to just hit hte period

shareImage(on: .facebook)

enum SFSymbols {
    static let location = UIImage(systemName: "mappin.and.ellipse")
    static let repos = UIImage(systemName: "folder")
    static let gists = UIImage(systemName: "text.alignleft")
    static let followers = UIImage(systemName: "heart")
    static let following = UIImage(systemName: "person.2")
}

 
func getAaronsOpinion(on platform: SocialPlatform) {
    //let opinion = platform.rawValue
    print(platform.rawValue)
}

//getAaronsOpinion(on: .facebook)
//getAaronsOpinion(on: .twitter)

print(SocialPlatform2.allCases.count)
//can now use this like a colleciton

for platform in SocialPlatform2.allCases {
    print(platform.rawValue)
}

//associated values
enum SocialMediaPlatform {
    case twitter(followers: Int)
    case facebook
    case insta
    case linkedin
    case youtube(subs: Int)
}

func getSponsorsElig(for platform: SocialMediaPlatform) {
    switch platform {
    case .twitter(let followers) where followers > 10000:
        print("you can have sponsors")
    case .youtube(let subs) where subs > 25000:
        print("youtube yes")
    case .insta, .linkedin, .facebook, .twitter, .youtube:
        print("not eligible")
    }
}

getSponsorsElig(for: .twitter(followers: 15000))

