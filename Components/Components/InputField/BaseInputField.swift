//
//  BaseInputField.swift
//  Components
//
//  Created by Tanet Pornsirirat on 6/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
import UIKit

public class BaseInputField: UIInputView {
    
    public init() {
        super.init(frame: CGRect.zero, inputViewStyle: .default)
    }
    
    public override init(frame: CGRect, inputViewStyle: UIInputView.Style) {
        super.init(frame: frame, inputViewStyle: inputViewStyle)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
