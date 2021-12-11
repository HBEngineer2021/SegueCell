//
//  settingViewController.swift
//  SegueCell
//
//  Created by Motoki Onayama on 2021/06/01.
//

import UIKit

class settingViewController: UIViewController {

    @IBOutlet weak var setAppTable: UITableView!
    
    let AppList = ["タイマー"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAppTable.delegate = self
        setAppTable.dataSource = self
    }
}

extension settingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let Apps = AppList[indexPath.row]
        cell.setAppImg.image = UIImage(named: "タイマー.png")
        cell.setAppLabel.text = Apps
        return cell
    }
    
}
