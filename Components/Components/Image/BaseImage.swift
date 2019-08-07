//
//  BaseImage.swift
//  Components
//
//  Created by Tanet Pornsirirat on 6/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
import UIKit

public class BaseImage: UIImageView {
    
    public init() {
        super.init(image: UIImage())
        self.clipsToBounds = true
    }
    
    public override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
    }
    
    public override init(image: UIImage?) {
        super.init(image: image)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
