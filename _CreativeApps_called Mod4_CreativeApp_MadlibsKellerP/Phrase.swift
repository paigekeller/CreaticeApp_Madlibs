
import Foundation

enum Theme {
    case christmas
    case halloween
    case thanksgiving
}

class Phrase {
    var christmasPhrase: String = ""
    var halloweenPhrase: String = ""
    var thanksgivingPhrase: String = ""
    var theme: Theme
    
    init(th: Theme) {
        theme = th
    }

    
func setPhrase(nArray: [String], aArray: [String], vArray: [String], pArray: [String], numArray: [Int], object: Phrase) -> String {
    
    switch theme {
    case .christmas:
        object.christmasPhrase = "It's Christmas morning and i'm a \(numArray[0]) year old \(vArray[0])ing down the stairs of my parents house. All I want is a \(nArray[0]) from \(pArray[0]). I \(vArray[1]) on the floor and began \(vArray[2])ing my presents. Out my window I hear \(pArray[1]) saying \(aArray[0]) Christmas to all and to all a \(aArray[1]) night!"
        
        return object.christmasPhrase
    case .halloween:
        object.halloweenPhrase = "As I \(vArray[0]) up to the house to get my candy, a person opens the door and puts a \(nArray[0]) in my bag of candy. The \(nArray[0]) was \(aArray[0]) and tasted \(aArray[1]). I will never \(vArray[1]) back to that house!"
    
    return object.halloweenPhrase
    default:
        object.thanksgivingPhrase = "This weekend is Thanksgiving, and I am so \(aArray[0])! We are hosting it at \(pArray[0])'s \(nArray[0]). \(pArray[0]) is making a \(nArray[1]) for dinner and everyone is bringing a \(nArray[2]) for dessert. I can't wait!"
        
    return object.thanksgivingPhrase
    }
    
    
}
}
