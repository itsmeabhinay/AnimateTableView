//
//  UIColor+Random.swift
//  AnimateTableView
//
//  Created by Abhinay Simha Vangipuram on 1/26/17.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
