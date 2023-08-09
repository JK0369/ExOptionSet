//
//  ViewController.swift
//  ExOptionSet
//
//  Created by 김종권 on 2023/08/09.
//

import UIKit

struct ShippingOptions: OptionSet {
    let rawValue: Int

    static let nextDay    = ShippingOptions(rawValue: 1 << 0)
    static let secondDay  = ShippingOptions(rawValue: 1 << 1)
    static let priority   = ShippingOptions(rawValue: 1 << 2)
    static let standard   = ShippingOptions(rawValue: 1 << 3)

    static let express: ShippingOptions = [.nextDay, .secondDay]
    static let all: ShippingOptions = [.express, .priority, .standard]
}


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleOption: ShippingOptions = .priority
        let multipleOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
        let noOptions: ShippingOptions = []

        switch singleOption {
        case .nextDay:
            print("nextDay")
        case .all:
            print("all")
        default:
            print("default")
        }
    }
}

