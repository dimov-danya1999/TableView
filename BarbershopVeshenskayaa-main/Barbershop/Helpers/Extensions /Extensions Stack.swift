//
//  Extensions Stack.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

extension UIStackView {
    convenience init(view: [UIView], axis: NSLayoutConstraint.Axis, spacing: Int) {
        self.init(arrangedSubviews: view)
        self.axis = axis
        self.spacing = CGFloat(spacing)
    }
}


