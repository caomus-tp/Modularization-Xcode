//
//  BaseButton.swift
//  Components
//
//  Created by Tanet Pornsirirat on 6/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
import UIKit

public class BaseButton: UIButton {
    
    public init() {
        super.init(frame: CGRect.zero)
        self.setTitleColor(.red, for: .normal)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
