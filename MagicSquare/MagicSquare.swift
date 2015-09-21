//
//  MagicSquare.swift
//  MagicSquare
//
//  Created by Greg Patrick on 8/31/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

import Foundation

class MagicSquare: CustomStringConvertible{
    var matrix: [[Int]]
    var nextNumber: Int
    var n: Int
    var row: Int
    var col: Int
    
    init(dimension: Int){
        matrix = [[Int]](count: dimension, repeatedValue: [Int](count: dimension, repeatedValue: Int()))
        nextNumber = 1
        n = dimension
        row = 0
        col = 0
        computeValues()
    }
    
    func addFirstNumber(){
        row = 0
        col = n / 2
        matrix[row][col] = nextNumber
        nextNumber++
    }
    
    func addNextNumber(){
        //Figure out next location
        let nextRow = (row + (n - 1)) % n
        let nextCol = (col + 1) % n

        
        //Place next number there
        if matrix[nextRow][nextCol] == 0 {
            row = nextRow
            col = nextCol
        }
        else{
            row = (row + 1) % n
        }
        matrix[row][col] = nextNumber

        
        //Increment next number
        nextNumber++
    }
    
    func computeValues(){
        addFirstNumber()
        let maxNumber = n * n
        for _ in 2 ... maxNumber {
            addNextNumber()
        }
    }
    
    var description: String{
        var result = ""
        for i in 0 ..< matrix.count{
            for j in 0 ..< matrix.count{
                result += "\(matrix[i][j])\t"
            }
            result += "\n"
        }
        
        return result
    }
}