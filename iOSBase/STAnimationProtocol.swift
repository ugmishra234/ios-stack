//
//  STAnimationProtocol.swift
//  STAnimationProtocol
//
//  Created by TangJR on 1/13/16.
//  Copyright © 2016 tangjr. All rights reserved.
//


import UIKit

protocol STAnimationProtocol {
    func startAnimation()
    func stopAnimation(_ finished: @escaping () -> Void)
}
