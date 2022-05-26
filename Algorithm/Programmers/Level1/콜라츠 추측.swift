//
//  main.swift
//  Algorithm
//
//  Created by 김승창 on 2022/05/26.
//

func solution(_ num: Int) -> Int {
    var count = 0
    var number = num
    while count < 500 {
        if number == 1 {
            return count
        }
        
        if number % 2 == 0 {
            number /= 2
        } else {
            number *= 3
            number += 1
        }
        count += 1
    }
    
    return -1
}
