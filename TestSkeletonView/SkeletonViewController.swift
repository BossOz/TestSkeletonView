//
//  SkeletonViewController.swift
//  TestSkeletonView
//
//  Created by Oscar on 11/02/2020.
//  Copyright © 2020 Oscar Manzelli. All rights reserved.
//

import UIKit
import SkeletonView

class SkeletonViewController: UIViewController {

    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.showAnimatedGradientSkeleton(transition: .crossDissolve(0.25))
        
        
        self.oneLabel.text = "Cione"
        self.twoLabel.text = "Ciaone ancora ancorone!"
    
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.view.hideSkeleton(reloadDataAfter: true, transition: .crossDissolve(0.25))
        }
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
