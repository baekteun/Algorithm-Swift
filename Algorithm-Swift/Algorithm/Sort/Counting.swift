//
//  Counting.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
var dict = [Int:Int]()
var res: [Int] = []
for i in arr{
    if dict[i] != nil { dict[i]! += 1 }
    else { dict[i] = 1}
}
for i in 0..<100{
    if dict[i] != nil{
        for _ in 0..<dict[i]!{
            res.append(i)
        }
    }
}
print(res)
