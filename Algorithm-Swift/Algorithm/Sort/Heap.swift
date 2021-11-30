//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
print(heapSort(arr, true))

func heapSort(_ arr: [Int], _ reversed: Bool) -> [Int]{
    var clone = arr
    var res: [Int] = []
    for i in stride(from: arr.count-1, through: 0, by: -1){
        if i == 0{
            guard let last = clone.popLast() else { fatalError() }
            res.append(last)
        }else{
            clone = makeMaxHeap(clone)
            clone.swapAt(0, i)
            guard let last = clone.popLast() else { fatalError() }
            res.append(last)
        }
    }
    return reversed ? res.reversed() : res
}

func makeMaxHeap(_ arr: [Int]) -> [Int]{
    var res = arr
    for i in 1..<arr.count{
        var child = i
        repeat{
            let root: Int = (child - 1)/2
            if res[root] < res[child]{
                res.swapAt(root, child)
            }
            child = root
        }while child != 0
    }
    return res
}
