//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class Dog : RunnerAnimal {
    var speed: Double
    var category: String = "Dogs"
    var isAlive: Bool = true

    init(speed: Double) {
        self.speed = speed
    }
}