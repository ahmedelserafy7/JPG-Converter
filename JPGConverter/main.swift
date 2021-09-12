//
//  main.swift
//  JPGConverter
//
//  Created by Elser_10 on 9/12/21.
//

import Foundation

enter("Drop the path:")

while let line = readLine() {
    convertToPNGFile(path: line)
    enter("Drop a new path:")
    successMessage(line)
}
