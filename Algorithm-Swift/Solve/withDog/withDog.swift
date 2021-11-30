//
//  main.swift
//  Algorithm-Swift
//
//  Created by baegteun on 2021/10/18.
//

import Foundation

var durab = readLine()!.split(separator: " ").map{Int($0)!}
let path = "/Users/baegteun/Desktop/GItClone/GitHub/Algorithm-Swift/Algorithm-Swift/withDog/dog.json"
var res = [String]()
do{
    if let data = try String(contentsOfFile: path).data(using: .utf8){
        let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String:Any]]
        for i in json{
            var cur = 0
            var suc = true
            while cur < durab.count{
                cur += Int(i["점프력"] as! String)!
                if cur > durab.count{
                    break
                }
                durab[cur-1] -= Int(i["몸무게"] as! String)!
                if durab[cur-1] < 0{
                    suc = false
                    break
                }
            }
            if suc{
                res.append(i["이름"] as! String)
            }
        }
        print(res)
    }
}catch{
    print(error.localizedDescription)
}



