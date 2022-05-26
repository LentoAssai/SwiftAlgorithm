//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/26.
//

func solution(_ arr: [Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
