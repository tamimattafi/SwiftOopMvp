//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class Main : MainViewProtocol {

    private lazy var presenter: MainPresenterProtocol = MainPresenter(view: self)

    func getChaserSpeed() -> Double {
        getUserInput(message: "Please enter chaser speed")
    }

    func getTargetSpeed() -> Double {
        getUserInput(message: "Please enter target speed")
    }

    func getDistance() -> Double {
        getUserInput(message: "Please enter a distance")
    }

    func onStart() {
        presenter.onViewStarted()
    }

    func showMessage(message: String) {
        print(message)
    }

    private func getUserInput(message: String) -> Double {
        var value: Double? = nil
        while value == nil {
            print(message)
            value = Double(readLine()!)
        }
        return value!
    }
}