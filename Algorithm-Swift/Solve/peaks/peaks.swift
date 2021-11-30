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
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var res = 0
var isPeaks = [[Bool]]()
for _ in 0..<t{isPeaks.append(Array(repeating: false, count: t))}

for i in 0..<t{
    for k in 0..<t{
        var flag = true
        for m in 0..<4{
            let nx = i + dx[m]
            let ny = k + dy[m]
            if nx >= t || ny >= t || nx < 0 || ny < 0{
                continue
            }
            if input[i][k] <= input[nx][ny] || isPeaks[nx][ny]{
                flag = false
                break
            }
            
        }
        if flag{
            res += 1
            isPeaks[i][k] = true
        }
    }
}
print(res)
