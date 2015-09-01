//
//  MagicSquare.swift
//  MagicSquare
//
//  Created by Greg Patrick on 8/31/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

import Foundation

class MagicSquare: Printable{
    var matrix: [[Int]]
    var nextNumber: Int
    var n: Int
    
    init(dimension: Int){
        matrix = [[Int]](count: dimension, repeatedValue: [Int](count: dimension, repeatedValue: Int()))
        nextNumber = 1
        n = dimension
        computeValues()
    }
    
    func addFirstNumber(){
        let middle = n / 2
        matrix[0][middle] = nextNumber
        nextNumber++
    }
    
    func addNextNumber(){
        //Figure out next location
        //Place next number there
        //Increment next number
    }
    
    func computeValues(){
        addFirstNumber()
        let maxNumber = n * n
        for i in 1 ... maxNumber {
            addNextNumber()
        }
    }
    
    var description: String{
        var result = ""
        for i in 0 ..< matrix.count{
            for j in 0 ..< matrix.count{
                result += "\(matrix[i][j]) "
            }
            result += "\n"
        }
        
        return result
    }
}