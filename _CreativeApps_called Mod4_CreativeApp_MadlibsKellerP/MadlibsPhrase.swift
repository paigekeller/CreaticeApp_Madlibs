
import Foundation

class MadlibsPhrase {
    var noun: [String] = []
    var adjective: [String] = []
    var verb: [String] = []
    var person: [String] = []
    var number: [Int] = []
    
//christmas initalizer
    init (num: Int, n1: String, a1: String, a2: String, v1: String, v2: String, v3: String, p1: String, p2: String){
        number.append(num)
        noun.append(n1)
        adjective.append(a1)
         adjective.append(a2)
        verb.append(v1)
        verb.append(v2)
        verb.append(v3)
        person.append(p1)
         person.append(p2)
    }

//halloween initalizer
    init (n1: String, n2: String, a1: String, a2: String, v1: String, v2: String){
        noun.append(n1)
        noun.append(n2)
        adjective.append(a1)
        adjective.append(a2)
        verb.append(v1)
        verb.append(v2)
    }
    
//thanksgiving initalizer
    init (n1: String, n2: String, n3: String, a1: String, p1: String, p2: String){
        noun.append(n1)
        noun.append(n2)
        noun.append(n3)
        adjective.append(a1)
        person.append(p1)
        person.append(p2)
    }
}
