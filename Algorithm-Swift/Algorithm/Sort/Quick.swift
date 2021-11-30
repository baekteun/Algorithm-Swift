//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
print(quick(arr))

func quick(_ arr: [Int]) -> [Int]{
    guard let pivot = arr.first, arr.count > 1 else { return arr }
    let less = arr.filter{ $0 < pivot }
    let equal = arr.filter{ $0 == pivot }
    let greater = arr.filter{ $0 > pivot }
    return quick(less) + equal + quick(greater)
}
