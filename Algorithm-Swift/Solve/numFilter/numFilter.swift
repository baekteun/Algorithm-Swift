//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/08.
//

let input = Array(readLine()!).compactMap{Int(String($0))}
print(input)
let res = input.reduce("") { a, b in
    a + "\(b)"
}
print(divisorCount(Int(res)!))

func divisorCount(_ n: Int) -> Int{
    var x = n
    var count = 0
    for i in 1..<x{
        if x % i == 0 {
            count += 1
            if i * i < x {
                count += 1
                x /= i
            }
        }
    }
    return count
}
