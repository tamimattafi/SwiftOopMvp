//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class Cat : RunnerAnimal, HasName {
    var name: String
    var speed: Double
    var category: String = "Cats"
    var isAlive: Bool  = true

    init(speed: Double, name: String) {
        self.speed = speed
        self.name = name
    }
}