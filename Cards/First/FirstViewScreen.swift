//
//  FirstViewScreen.swift
//  Cards
//
//  Created by Eliezer Sant Ana on 21/05/23.
//

import UIKit
import SnapKit

class FirstViewScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "First"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
}

extension FirstViewScreen: ShaftViewCode {
    
    func setupHierarchy() {
        addSubview(titleLabel)
    }
    
    func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
    
    func additionalSetup() {
        backgroundColor = .background
    }
}
