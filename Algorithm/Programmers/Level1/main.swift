//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/30.
//

import Foundation

//func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
//    var answer = 0
//    for i in 0..<absolutes.count {
//        answer += signs[i] ? absolutes[i] : -absolutes[i]
//    }
//    return answer
//}

func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
}
