//
//  ViewController.swift
//  AppModular
//
//  Created by Tanet Pornsirirat on 6/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import UIKit
import Feature1
import Components
import  Feature2

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var modularView: UIView!
    
    let feature0Btn = BaseButton(frame: CGRect.zero)
    let feature1Btn = BaseButton(frame: CGRect.zero)
    let fe2 = Feature2Modular()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Feature1Modular.shared.delegate = self
        fe2.delegate = self
        initView()
        setButtons()
    }
    
    @IBAction func onShowFeature(_ sender: Any) {
//        Feature1Modular.shared.onOpenFeature(from: self)
        let f1 = Feature1Modular()
//        f1.onOpenFeature(transition: .push(vc: self))
        f1.onOpenFeature(transition: .present(vc: self))
    }
}

extension ViewController {
    private func initView() {
        for btn in [feature0Btn, feature1Btn] {
            btn.setTitleColor(.gray, for: .normal)
            stackView.addArrangedSubview(btn)
        }
    }
    
    private func setButtons() {
        feature0Btn.setTitle("present feature 0", for: .normal)
        feature1Btn.setTitle("push feature 1", for: .normal)
    }
}

extension ViewController: Feature1Delegate {
    func didSelectCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    func didSelectSubmit() {
        dismiss(animated: true, completion: nil)
    }
}

extension ViewController : Feature2Delegate {
    func didGetCompleted() {
        
    }
}
