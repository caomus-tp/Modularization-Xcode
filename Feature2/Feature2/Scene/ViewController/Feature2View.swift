//
//  FeatureViewController.swift
//  Feature2
//
//  Created by Tanet Pornsirirat on 7/8/2562 BE.
//  Copyright © 2562 Tanet Pornsirirat. All rights reserved.
//

import Foundation
import UIKit

class Feature2View: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    private var viewModel: Feature2VCInterface!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        instanceFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instanceFromNib()
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        self.frame.size = CGSize(width: bounds.width, height: 0)
//    }
    
    func instanceFromNib() {
        let view = UINib(nibName: "Feature2Xib", bundle: Bundle(for: BundleToken.self)).instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        addSubview(view)
    }
    
    //MAKE: - Public
    func configure(viewModel: Feature2VCInterface) {
        self.viewModel = viewModel
        setupUI()
    }
    
    private func setupUI() {
        labelTitle.text = viewModel.output.title
        labelDetail.text = viewModel.output.detail
        viewModel.input.onSetupCompleted()
    }
}
