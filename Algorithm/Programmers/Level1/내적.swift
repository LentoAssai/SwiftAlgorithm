//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/30.
//

import Foundation

//func solution(_ a: [Int], _ b: [Int]) -> Int {
//    return (0..<a.count).map { a[$0] * b[$0] }.reduce(0, +)
//}

func solution(_ a: [Int], _ b: [Int]) -> Int {
    return zip(a, b).map(*).reduce(0, +)
}
