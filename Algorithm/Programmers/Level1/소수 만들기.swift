//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/26.
//

import Foundation

func isPrime(_ num: Int) -> Bool {
    if num == 2 {
        return true
    } else if num % 2 == 0 {
        return false
    } else {
        for i in stride(from: 3, through: Int(sqrt(Double(num))), by: 2) {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
}

func solution(_ nums: [Int]) -> Int {
    var answer = 0
    
    for i in 0..<nums.count - 2 {
        for j in i+1..<nums.count - 1 {
            for k in j+1..<nums.count {
                let num = nums[i] + nums[j] + nums[k]
                if isPrime(num) {
                    answer += 1
                }
            }
        }
    }
    
    
    return answer
}
