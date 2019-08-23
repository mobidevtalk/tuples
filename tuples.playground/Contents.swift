/*:
 This playground project is the implementation of Talks over Swift's [tuple & Typealias](https://mobidevtalk.com/swift-typealias-tuple-the-little-smart-dude/)
 */

import Foundation

/*:
 tuple declaration and usage
 */

let greetings = ("Hola", "Spanish")
greetings.0

let organisedGreetings = (phrase: "Hej", locale: "Swedish")
organisedGreetings.phrase

/*:
 When to use
 */
func info()->(name: String, age: Int){
    return ("mobidevtalk", 0)
}

let mobiDevTalkInfo = info()
mobiDevTalkInfo.name
mobiDevTalkInfo.age

/*:
 Why to use
 */

struct Info{
    let name: String
    let age: Int
}

func modifiedInfo() -> Info{
    return Info(name: "mobidevtalk", age: 0)
}

/*:
 Difference from typealias
 */

typealias Amount = Int
typealias Execute = (Int)->(String)

typealias Age = (month: Int, year: Int)

struct Profile{
    let name: String
    let age: Age
    
}

let profile = Profile(name: "mobidevtalk", age: Age(month: 4, year: 0))
profile.age.month

let shortProfile = Profile(name: "mobidevtalk", age: (4, 0))
shortProfile.age.year

