//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/08.
//

import Foundation
var arr = Array(0...20)
for i in 0..<10{
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var subArr = arr[input[0]-1...input[1]-1]
    arr.removeSubrange(input[0]-1...input[1]-1)
    arr.insert(contentsOf: subArr.reversed(), at: input[0]-1)
}
print(arr)
