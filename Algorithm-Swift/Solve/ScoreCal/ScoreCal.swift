//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/08.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}

var res = 0
var count = 0
for i in input{
    if i == 1{
        count += 1
        res += count
    }else{
        count = 0
    }
}
print(res)
