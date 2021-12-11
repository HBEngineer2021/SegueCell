//
//  ViewController.swift
//  SegueCell
//
//  Created by Motoki Onayama on 2021/06/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AppLogo: UIImageView!
    @IBOutlet var AppName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppLogo.image = UIImage(named: "タイマー.png")
        AppName.text = "タイマー"
    }
    
}

extension ViewController: UITableViewDelegate {
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        return cell
    }
    
}
