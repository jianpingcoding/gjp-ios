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
        
        self.title = "Features"
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
        let UIKitVC = UIKitViewController()
        self.navigationController?.pushViewController(UIKitVC, animated: true)
//        self.present(swiftVC, animated: true, completion: nil)
    }
    
    //-------------------- FeatureViewController class --------------------
    
    // Add feature table view
    private func setupView() {
       let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let navigationBarHeight: CGFloat = self.navigationController?.navigationBar.frame.height ?? 0
       let displayWidth: CGFloat = self.view.frame.width
       let displayHeight: CGFloat = self.view.frame.height

       let startY = statusBarHeight + navigationBarHeight
       var subViewHeight: CGFloat = 0
     
       // Add feature table view
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
