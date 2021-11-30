//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/11/30.
//

import Foundation

var arr = Array(repeating: 0, count: 10).map{ _ in Int(arc4random_uniform(100))}
print(mergeSort(arr))
func mergeSort(_ arr: [Int]) -> [Int]{
    guard arr.count > 1 else { return arr }
    let mid = arr.count/2
    let left = mergeSort(Array(arr[0..<mid]))
    let right = mergeSort(Array(arr[mid..<arr.count]))
    
    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int]{
    var leftIdx = 0
    var rightIdx = 0
    
    var res: [Int] = []
    res.reserveCapacity(left.count + right.count)
    while leftIdx < left.count, rightIdx < right.count{
        if left[leftIdx] < right[rightIdx]{
            res.append(left[leftIdx])
            leftIdx += 1
        }
        else if left[leftIdx] > right[rightIdx]{
            res.append(right[rightIdx])
            rightIdx += 1
        }
        else{
            res.append(left[leftIdx])
            res.append(right[rightIdx])
            leftIdx += 1
            rightIdx += 1
        }
    }
    while leftIdx < left.count{
        res.append(left[leftIdx])
        leftIdx += 1
    }
    while rightIdx < right.count{
        res.append(right[rightIdx])
        rightIdx += 1
    }
   
    return res
}
