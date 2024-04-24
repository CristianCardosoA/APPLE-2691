import UIKit

func fibo(x: Int) -> Int{
    if x == 0 {
        return 0
    }
    if x == 1 {
        return 1
    }
    return fibo(x: x-1) + fibo(x: x-2)
}

fibo(x: 6)
