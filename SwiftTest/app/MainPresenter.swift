//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class MainPresenter : MainPresenterProtocol {

    var view: MainViewProtocol

    lazy var target: RunnerAnimal = Cat(speed: view.getTargetSpeed(), name: "Kitty")
    lazy var chaser: RunnerAnimal = Dog(speed: view.getChaserSpeed())

    init(view: MainViewProtocol) {
        self.view = view
    }

    func onViewStarted() {
        view.showMessage(message: "Starting game...")
        usleep(500000)
        prepareAnimals()
    }

    private func prepareAnimals() {
        view.showMessage(message: "Preparing animals...")
        usleep(500000)
        view.showMessage(message: "Animal 1 belongs to \(target.category) with a speed of \(target.speed) m/s")
        view.showMessage(message: "Animal 2 belongs to \(chaser.category) with a speed of \(chaser.speed) m/s")
        prepareChase()
    }

    private func prepareChase() {
        view.showMessage(message: "Preparing the chase...")
        usleep(500000)
        var distance = view.getDistance()
        startChase(distance: &distance)
    }

    private func startChase(distance: inout Double) {
        view.showMessage(message: "Starting the chase...")
        usleep(500000)
        print("Target speed: \(target.speed) m/s. \nChaser speed: \(chaser.speed) m/s")
        print("The target is \(distance) miters away")
        while processChase(chaserSpeed: chaser.speed, targetSpeed: target.speed, distance: distance) {
            usleep(1000000)
            distance -= chaser.speed - target.speed
        }
    }

    private func processChase(chaserSpeed: Double, targetSpeed: Double, distance: Double) -> Bool {
        view.showMessage(message: "Chaser declares:")
        if targetSpeed > chaserSpeed {
            view.showMessage(message: "We will not be able to reach the target!")
            return false
        } else if ((chaserSpeed - targetSpeed) >= 0.0 && distance <= 0.0) || distance <= 0.0 {
            view.showMessage(message: "We got the target!")
            return false
        } else if (targetSpeed - chaserSpeed) >= 0.0 && distance > 0.0  {
            view.showMessage(message: "We will not be able to reach the target!")
            return false
        } else {
            let reachIn: Double = distance / (chaserSpeed - targetSpeed)
            view.showMessage(message: "The target will be reached in \(String(format: "%.2f", reachIn)) seconds")
            view.showMessage(message: "Remaining Distance: \(distance) \nChaser \(getDistanceRoute(distance: distance)) Target")
            return true
        }
    }

    private func getDistanceRoute(distance: Double) -> String {
        var tempDistance = distance
        var route = ""
        while tempDistance > 0.0 {
            route += "_"
            tempDistance -= 1
        }
        return route
    }

}