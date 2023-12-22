//
//  UIImageViewExtensions.swift
//  DesignKit
//
//  Created by DDPai on 2023/12/22.
//

import UIKit

public extension UIImageView {
    func asAvatar(cornerRadius: CGFloat = 4) {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }
}
