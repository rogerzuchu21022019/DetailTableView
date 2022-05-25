//
//  ViewController.swift
//  DetailTableView
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var girls:[BeautifulGirls] = [
        BeautifulGirls(name: "Nana", image: "1"),
        BeautifulGirls(name: "Na", image: "2"),
        BeautifulGirls(name: "Sunny", image: "3"),
        BeautifulGirls(name: "Thao", image: "4"),
        BeautifulGirls(name: "Nhung", image: "5"),
    ]
    @IBOutlet weak var tbvGirl: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return girls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! GilrCell
        cell.ivGirl.image = UIImage(named: girls[indexPath.row].image)
        cell.lblName.text = girls[indexPath.row].name
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let screen2nd = storyboard.instantiateViewController(withIdentifier: "DetailVC") as! DetailInformationViewController
        screen2nd.image = girls[indexPath.row].image
        self.navigationController?.pushViewController(screen2nd, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tbvGirl.dataSource = self
        tbvGirl.delegate = self
    }
    
 


}

