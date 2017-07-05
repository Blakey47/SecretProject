//
//  FloatingActionButton.swift
//  SecretProject
//
//  Created by Darragh on 7/5/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButtonX {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        UIView.animate(withDuration: 0.3, animations: {
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 45 * (.pi / 180))
            } else {
                self.transform = .identity
            }
        })
        
        return super.beginTracking(touch, with: event)
    }
}
