//
//  ViewController.swift
//  LearAutolayoutEventCycle
//
//  Created by Neal on 2020/1/16.
//  Copyright © 2020 neal812220. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var yellowView: UIView = {
        let yellow = UIView()
        yellow.layer.cornerRadius = 40
        yellow.backgroundColor = .yellow
        return  yellow
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(yellowView)
        
        NSLayoutConstraint.activate([])
        // Do any additional setup after loading the view.
    }


}

