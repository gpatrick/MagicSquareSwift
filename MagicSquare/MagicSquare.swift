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
    init(dimension: Int){
        matrix = [[Int]](count: dimension, repeatedValue: [Int](count: dimension, repeatedValue: Int()))
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