//
//  CGFloat+Random.swift
//  AnimateTableView
//
//  Created by Abhinay Simha Vangipuram on 1/26/17.
//  Copyright © 2017 Home. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
