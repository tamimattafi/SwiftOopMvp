//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol MainViewProtocol {
    func showMessage(message: String)
    func getChaserSpeed() -> Double
    func getTargetSpeed() -> Double
    func getDistance() -> Double
}

protocol MainPresenterProtocol {
    func onViewStarted()
}