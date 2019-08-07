//
//  FeatureViewModel.swift
//  Feature1
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation

protocol FeatureVCInput {
    func onSelectSubmit()
    func onSelectCancel()
}

protocol FeatureVCOutput: class {
    
}


internal protocol FeatureVCInterface: FeatureVCOutput, FeatureVCInput {
    var input: FeatureVCInput { get }
    var output: FeatureVCOutput { get }
}

final class FeatureViewModel: FeatureVCInterface{
    var input: FeatureVCInput { return self }
    var output: FeatureVCOutput { return self }
    
    init() {
        
    }
}

extension FeatureViewModel: FeatureVCInput {
    func onSelectSubmit() {
        Feature1Modular.shared.onSelectSubmit()
    }
    
    func onSelectCancel() {        
        Feature1Modular.shared.onSelectCancel()
    }
}


extension FeatureViewModel: FeatureVCOutput {
    
}
