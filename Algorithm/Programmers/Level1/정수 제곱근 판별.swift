//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/27.
//

import Foundation

func solution(_ n: Int64) -> Int64 {
    let x = Int64(sqrt(Double(n)))
    return (x * x) == n ? (x + 1) * (x + 1) : -1
}
