//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/10/18.
//

import Foundation

let n = Int(readLine()!)!
var eratos = [Bool](repeating: false, count: n+1)
eratos[0] = true
eratos[1] = true
setEra()
var count = 0
for i in 1...n{
    if !eratos[i]{
        count += 1
    }
}

print(count)


// MARK: - Helpers
func setEra(){
    for i in 2..<eratos.count{
        if !eratos[i]{
            for k in stride(from: i*i, to: eratos.count, by: i){
                eratos[k] = true
            }
        }
    }
}
