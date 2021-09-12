//
//  Message.swift
//  JPGConverter
//
//  Created by Elser_10 on 9/12/21.
//

import Foundation

func enter(_ message: String) {
    print(message, terminator: "")
}

func successMessage(_ line: String) {
    if line == "done" {
        exit(EXIT_SUCCESS)
    }
}
