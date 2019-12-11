//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol Runner {
    var speed: Double { get set }
    func run(direction: Double)
}

extension Runner {
    func run(direction: Double) {
        print("is running towards \(direction) with a speed of \(speed)")
    }
}