//
//  Insertion.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
for i in 0..<arr.count{
    for k in stride(from: i, to: 0, by: -1){
        if arr[k-1] > arr[k]{
            arr.swapAt(k-1, k)
        }
    }
}
print(arr)
