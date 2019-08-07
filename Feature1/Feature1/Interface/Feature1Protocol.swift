//
//  Feature1Protocol.swift
//  Feature1
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation

public protocol Feature1Protocol {
    func onOpenFeature(transition: TransitionType)
    func onSelectSubmit()
    func onSelectCancel()
}

public protocol Feature1Delegate {
    func didSelectSubmit()
    func didSelectCancel()
}

/// Persent, Push
public enum TransitionType {
    case present (vc: UIViewController)
    case push (vc: UIViewController)
}
