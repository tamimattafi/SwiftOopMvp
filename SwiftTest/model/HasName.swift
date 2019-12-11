//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol HasName {
    var name: String { get set }
    func selfDescribe()
}

extension HasName {
    func selfDescribe() {
        print("My name is \(name)!")
    }
}