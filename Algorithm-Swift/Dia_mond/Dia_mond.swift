//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/15.
//

import Foundation
var res = 0
var t = Int(readLine()!)!
var input = [[Int]]()
for _ in 0..<t{
    input.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var start = t/2
var end = t/2
for i in 0..<t{
    res += Array(input[i][start...end]).reduce(0, +)
    
    if t/2 > i{
        start -= 1
        end += 1
    }
    else{
        start += 1
        end -= 1
    }
}
print(res)
