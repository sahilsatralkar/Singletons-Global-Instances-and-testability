import UIKit

//Singleton: As per the book Design Pattern by GOF definition
final class ApiClient {
    
    private let instance = ApiClient()
    
    func getInstance() -> ApiClient {
        return instance
    }
    
    private init() {}
    
}
 
// Singleton: As per the book Design Pattern by GOF definition but with variation for Swift
class ApiClient2 {
    static let instance = ApiClient2()
    
    private init() {}
}
let client2 = ApiClient2.instance


// singletons with a small "s".This variation also allow creation of new instances
class ApiClient3 {
    static let instance = ApiClient3()
    
    init() {}
}
let client3 = ApiClient3.instance
let cleint4 = ApiClient3()
let urlsession = URLSession.shared
//let urlsession2 = URLSession() //Deprecated in iOS 13
let userDefaults = UserDefaults.standard
let userDefaults2 = UserDefaults()


// Global mutable state
class ApiClient4 {
    static var instance = ApiClient4() // var allows it set property as well
    
    init() {}
}
let global = ApiClient4.instance
var global2 = ApiClient4()
global2 = global
