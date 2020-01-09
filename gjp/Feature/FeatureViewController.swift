//
//  HomeTableTableViewController.swift
//  gjp
//
//  Created by Jianping on 7/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import UIKit

class FeatureViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //-------------------- Properties --------------------
    
    var features = [Feature]()
    let featureNames = ["Table View"]
    private var featureTableView: UITableView!
    
    
    //-------------------- UIViewController class --------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        initData()
    }
    
    
    //-------------------- UITableViewDataSource protocol --------------------
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return features.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(features[indexPath.row].name)"
        return cell
    }


    //-------------------- UITableViewDelegate protocol --------------------
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let swiftVC = SwiftViewController()
        let swiftNC = UINavigationController(rootViewController: swiftVC)
//        self.present(swiftViewController, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(swiftNC, animated: true)
    }
    
    //-------------------- FeatureViewController class --------------------
    
    // Add navigation bar and table view
    private func setupView() {
       let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
       let displayWidth: CGFloat = self.view.frame.width
       let displayHeight: CGFloat = self.view.frame.height

       var startY = barHeight
       var subViewHeight: CGFloat = 0
       
       // Add navigation bar
       subViewHeight = 44
       let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x:0, y: startY,
                                     width: displayWidth, height: subViewHeight))
       let navigationItem = UINavigationItem(title: "Features")
       navigationBar.setItems([navigationItem], animated: false)
       self.view.addSubview(navigationBar)
       startY += navigationBar.frame.height
       
       // Adda feature table view
       subViewHeight = displayHeight
       featureTableView = UITableView(frame: CGRect(x: 0, y: startY,
                            width: displayWidth, height: subViewHeight))
       featureTableView.register(UITableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
       featureTableView.dataSource = self
       featureTableView.delegate = self
       self.view.addSubview(featureTableView)
    }
    
    private func initData() {
        for name in featureNames {
            guard let feature = Feature(name: name) else {
                fatalError("Unable to instantiate feature in home page")
            }
            features.append(feature)
        }
    }
}
