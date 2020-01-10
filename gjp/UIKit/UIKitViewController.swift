//
//  SwiftViewController.swift
//  gjp
//
//  Created by Gi Joe on 9/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import UIKit

class UIKitViewController: UIViewController {

    //-------------------- UIViewController class --------------------

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton(frame: CGRect(x: 16, y: 100, width: 200, height: 50))
        button.center = view.center
        button.backgroundColor = .black
        button.setTitle("Back", for: .normal)
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    //-------------------- FeatureViewController class --------------------
    
    // Add navigation bar
    func addNavBar(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, title: String) {
       let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x:x, y: y,
                                     width: width, height: height))
       let navigationItem = UINavigationItem(title: title)
       navigationBar.setItems([navigationItem], animated: false)
       self.view.addSubview(navigationBar)
    }
    
    
    @objc func buttonClicked() {
        navigationController?.popToRootViewController(animated: true)
    }
}
