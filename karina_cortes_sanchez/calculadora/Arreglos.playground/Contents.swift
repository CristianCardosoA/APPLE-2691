import UIKit

var scores = [ "Richard" : 500 , "Luke ": 400 , "cherly ": 800]
scores ["Oli",: 399]

if let oldValue = scores.updateValue(100, forKey: "Richard"){
    print ("El valor anterior de Richard era \(oldValue))
}
