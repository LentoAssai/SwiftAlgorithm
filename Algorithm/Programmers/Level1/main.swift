//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/28.
//

import Foundation

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var students: [Int] = []
    for i in 0..<n {
        students.append(1)
        
        if lost.contains(i+1) {
            students[i] -= 1
        }
        if reserve.contains(i+1) {
            students[i] += 1
        }
    }
    
    for i in 0..<n {
        if i > 0 && students[i] == 2 && students[i-1] == 0 {
            students[i] -= 1
            students[i-1] += 1
        }
        if i < n-1 && students[i] == 2 && students[i+1] == 0 {
            students[i] -= 1
            students[i+1] += 1
        }
    }
    
    return students.filter { $0 > 0 }.count
}
