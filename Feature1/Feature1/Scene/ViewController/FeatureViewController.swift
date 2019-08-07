//
//  FeatureViewController.swift
//  Feature1
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
import UIKit

class FeatureViewController: UIViewController {
    
    private var viewModel: FeatureVCInterface! {
        didSet {
            bindViewModel()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    }
    
    @IBAction func onSelectCancel(_ sender: Any) {        
        viewModel.input.onSelectSubmit()
    }
    @IBAction func onSelectSubmit(_ sender: Any) {
        viewModel.input.onSelectCancel()
    }
    
    //MAKE: - Public
    func configure(viewModel: FeatureVCInterface) {
        self.viewModel = viewModel
        
    }
}


extension FeatureViewController {
    func bindViewModel() {
        
    }
}
