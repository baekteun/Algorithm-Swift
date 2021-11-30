//
//  Selection.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
var index = 0
for i in 0..<arr.count{
    var min = Int.max
    for k in i..<arr.count{
        if arr[k] < min{
            index = k
            min = arr[k]
        }
    }
    arr.swapAt(i, index)
}
print(arr)
