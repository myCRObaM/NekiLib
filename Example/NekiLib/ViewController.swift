//
//  ViewController.swift
//  NekiLib
//
//  Created by myCRObaM on 09/19/2019.
//  Copyright (c) 2019 myCRObaM. All rights reserved.
//

import UIKit
import NekiLib

class ViewController: UIViewController {
    var customSwitch: CustomSwitch = {
        let customSwitch = CustomSwitch()
        customSwitch.translatesAutoresizingMaskIntoConstraints = false
        customSwitch.onTintColor = UIColor.orange
        customSwitch.offTintColor = UIColor.darkGray
        customSwitch.cornerRadius = 0.1
        customSwitch.thumbCornerRadius = 0.1
        customSwitch.thumbTintColor = UIColor.white
        customSwitch.animationDuration = 0.25
        return customSwitch
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       setupUI()
    }
    func setupUI(){
        self.view.addSubview(customSwitch)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            customSwitch.topAnchor.constraint(equalTo: self.view.centerYAnchor),
            customSwitch.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            customSwitch.widthAnchor.constraint(equalToConstant: 80),
            customSwitch.heightAnchor.constraint(equalToConstant: 30)])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

