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
        yellow.backgroundColor = .yellow
        yellow.translatesAutoresizingMaskIntoConstraints = false
        return  yellow
    }()
    
    var blueView: UIView = {
        let blue = UIView()
        blue.backgroundColor = .blue
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.clipsToBounds = true
        return blue
    }()
    
    var redView: UIView = {
        let red = UIView()
        red.backgroundColor = .red
        red.translatesAutoresizingMaskIntoConstraints = false
        return red
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(yellowView)
        
        yellowView.addSubview(blueView)
        
        yellowView.addSubview(redView)
        
        NSLayoutConstraint.activate([
            yellowView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yellowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            yellowView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            yellowView.heightAnchor.constraint(equalToConstant: view.frame.width / 2),
            
            blueView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor),
            blueView.centerYAnchor.constraint(equalTo: yellowView.centerYAnchor),
            blueView.widthAnchor.constraint(equalToConstant: view.frame.width / 4),
            blueView.heightAnchor.constraint(equalToConstant: view.frame.width / 4),
            
            redView.rightAnchor.constraint(equalTo: yellowView.rightAnchor),
            redView.centerYAnchor.constraint(equalTo: yellowView.centerYAnchor),
            redView.widthAnchor.constraint(equalToConstant: view.frame.width / 4),
            redView.heightAnchor.constraint(equalToConstant: view.frame.width / 4)
        ])
        
        updateViewConstraints()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        yellowView.layoutIfNeeded()
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        blueView.layer.cornerRadius = blueView.frame.width / 2
        redView.layer.cornerRadius = redView.frame.width / 2
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

