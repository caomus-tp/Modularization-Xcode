//
//  Feature1Modular.swift
//  Feature1
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
final class BundleToken: NSObject {}


open class Feature1Modular: Feature1Protocol {
    
    public static let shared = Feature1Modular()
    
    open var delegate: Feature1Delegate?
    
    public init() {}
    
    public func onOpenFeature(transition: TransitionType) {
        print(" ======= \(#function) =======")
        let featureVC: FeatureViewController = UIStoryboard(name: "FeatureStoryboard", bundle: Bundle(for: BundleToken.self)).instantiateViewController(withIdentifier: "FeatureViewController") as! FeatureViewController
        let featureVM: FeatureViewModel = FeatureViewModel()
        featureVC.configure(viewModel: featureVM)
        featureVC.modalPresentationStyle = .overFullScreen
        featureVC.modalTransitionStyle = .coverVertical
        
        switch transition {
        case .present(let vc):
            vc.present(featureVC, animated: true, completion: nil)
        case .push(let vc):
            vc.navigationController?.pushViewController(featureVC, animated: true)
        }
    }
    
    public func onSelectSubmit() {
        print(" ======= \(#function) =======")
        delegate?.didSelectSubmit()
    }
     
    public func onSelectCancel() {
        print(" ======= \(#function) =======")
        delegate?.didSelectCancel()
    }
}


