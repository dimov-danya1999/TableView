//
//  Helper.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

class Helper {
    static func tamicOff(view: [UIView]) {
        for  view in view {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    static func addSupView(view: [UIView], superView: UIViewController) {
        for view in view {
            view.addSubview(view)
        }
    }
}

