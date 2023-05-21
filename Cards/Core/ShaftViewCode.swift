//
//  ShaftViewCode.swift
//  Cards
//
//  Created by Eliezer Sant Ana on 21/05/23.
//

import UIKit

protocol ShaftViewCode {
    func setupView()
    func setupHierarchy()
    func setupConstraints()
    func additionalSetup()
}

extension ShaftViewCode {
    func setupView() {
        setupHierarchy()
        setupConstraints()
        additionalSetup()
    }

    func additionalSetup() {
        
    }
}
