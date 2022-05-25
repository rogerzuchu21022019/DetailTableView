//
//  DetailInformationViewController.swift
//  DetailTableView
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class DetailInformationViewController: UIViewController {
    var image:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: image)!)
       
    }
    

}
