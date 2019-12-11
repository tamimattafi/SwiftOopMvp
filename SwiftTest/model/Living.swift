//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol Living {
    var isAlive: Bool {get set}
    func breathe() -> String
    mutating func kill()
}

extension Living {

    func breathe() -> String {
        if isAlive {
            return "Phew!"
        } else {
            return "x_x"
        }
    }

    mutating func kill() {
        isAlive = false
    }

}