//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/30.
//

import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    return commands.map { array[$0[0] - 1] }
}
