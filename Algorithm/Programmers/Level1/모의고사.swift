import Foundation

func solution(_ answers: [Int]) -> [Int] {
    let first_cycle = [1, 2, 3, 4, 5]
    let second_cycle = [2, 1, 2, 3, 2, 4, 2, 5]
    let third_cycle = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var persons = [1:0, 2:0, 3:0]
    
    for (index, value) in answers.enumerated() {
        if value == first_cycle[index % 5] {
            persons[1]! += 1
        }
        
        if value == second_cycle[index % 8] {
            persons[2]! += 1
        }
        
        if value == third_cycle[index % 10] {
            persons[3]! += 1
        }
    }
    
    return persons.filter{ $0.value == persons.values.max() }.sorted{ $0.key < $1.key }.map{ $0.key }
}
