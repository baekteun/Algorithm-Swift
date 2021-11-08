//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/08.
//

let t = Int(readLine()!)!

var res = ""
for _ in 0..<t{
    res += isPalin(readLine()!) ? "YES\n" : "NO\n"
}
print(res)

func isPalin(_ str: String) -> Bool{
    let arr = str.lowercased().map{String($0)}
    var res = true
    for i in 0..<arr.count/2{
        if arr[i] != arr[arr.count-1-i]{
            res = false
        }
    }
    return res
}
