//
//  BaseViewController.swift
//  Cards
//
//  Created by Eliezer Sant Ana on 21/05/23.
//

import UIKit

class BaseViewController<T: UIView>: UIViewController {
    
    public var rootView: T { return view as? T ?? T() }
    
    override open func loadView() {
        self.view = T()
    }
}
