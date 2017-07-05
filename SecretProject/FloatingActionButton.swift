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
                self.backgroundColor = #colorLiteral(red: 0.8196, green: 0.2196, blue: 0.3333, alpha: 1) /* #d13855 */
            } else {
                self.transform = .identity
                self.backgroundColor = #colorLiteral(red: 0.949, green: 0.2196, blue: 0.3961, alpha: 1) /* #f23865 */
            }
        })
        
        return super.beginTracking(touch, with: event)
    }
}
