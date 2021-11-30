//
//  Bubble.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
for i in 0..<arr.count{
    if i>0{
        for k in 0..<arr.count-i{
            if arr[k] > arr[k+1]{
                arr.swapAt(k, k+1)
            }
        }
    }
}
print(arr)
