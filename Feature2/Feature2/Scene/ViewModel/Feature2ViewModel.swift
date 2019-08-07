//
//  FeatureViewModel.swift
//  Feature2
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation


protocol Feature2VCInput {
    func onSetupCompleted()
}

protocol Feature2VCOutput: class {
    var title: String { get }
    var detail: String { get }
    var height: CGFloat { get }
}

protocol Feature2VCInterface: Feature2VCInput, Feature2VCOutput {
    var input: Feature2VCInput { get }
    var output: Feature2VCOutput { get }
}

final class Feature2ViewModel: Feature2VCInterface {
    var input: Feature2VCInput { return self }
    var output: Feature2VCOutput { return self }
    
    private var pHeight: CGFloat?
    private var pTitle: String?
    private var pDetail: String?
    
    init(title: String?,
         detail: String?,
         height: CGFloat = 0) {
        
        self.pHeight = height
        self.pTitle = title
        self.pDetail = detail
    }
}

extension Feature2ViewModel: Feature2VCInput {
    func onSetupCompleted() {
        Feature2Modular.shared.delegate?.didGetCompleted()
    }
}

extension Feature2ViewModel: Feature2VCOutput {
    var title: String {
        return pTitle ?? ""
    }
    
    var detail: String {
        return pDetail ?? ""
    }
    
    var height: CGFloat {
        return pHeight ?? 100.0
    }
}
