//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/15.
//

import Foundation
let t = Int(readLine()!)!
var input = [[Int]]()
for _ in 0..<t{
    input.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var Max = Int.min

for i in 0..<t{
    var col = 0
    for k in 0..<t{
        col += input[k][i]
    }
    Max = max(col, input[i].reduce(0, +), Max)
}
var s1 = 0
var s2 = 0
for i in 0..<t{
    s1 += input[i][i]
    s2 += input[i][t-i-1]
}
Max = max(s1, s2, Max)
print(Max)
