//
//  ViewController.swift
//  December-21
//
//  Created by Евгения Зорич on 21.12.2022.
//

import UIKit

class ViewController: UITableViewController {

    var classes = ["UITableViewController", "UIButton", "UISlider", "UISwitch", "UITextField", "UITabBar", "UINavigationBar", "UIAlertActivity", "UIWebView", "UITableViewCell", "UIToolbar"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UIKit"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = classes[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewViewController {
            vc.selectedText = classes[indexPath.row]
            vc.selectedNumber = indexPath.row + 1
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
    
