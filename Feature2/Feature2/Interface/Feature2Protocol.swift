//
//  Feature2Protocol.swift
//  Feature2
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation

public protocol Feature2Protocol {
    func onGetFeature2() -> UIView
}

public protocol Feature2Delegate {
    func didGetCompleted()
}
