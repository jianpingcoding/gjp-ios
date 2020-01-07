//
//  StoryboardUIViewController.swift
//  gjp
//
//  Created by Gi Joe on 7/1/20.
//  Copyright © 2020 ganjianping. All rights reserved.
//

import UIKit

class StoryboardUIViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
