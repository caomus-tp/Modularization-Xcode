//
//  Feature2Modular.swift
//  Feature2
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
final class BundleToken: NSObject {}

open class Feature2Modular: Feature2Protocol {
    
    static let shared = Feature2Modular()
    open var delegate: Feature2Delegate?
    
    public init() {}
    
    public func onGetFeature2() -> UIView {        
//        print(" ======= \(#function) =======")
//        let nib = UINib(nibName: "Feature2Xib", bundle: Bundle(for: BundleToken.self))
//        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        let viewContent = Feature2View(frame: CGRect(x: 0, y: 0, width: 320, height: 100))
        return viewContent
    }
}
