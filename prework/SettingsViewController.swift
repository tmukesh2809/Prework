//
//  SettingsViewController.swift
//  prework
//
//  Created by TJ on 8/31/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var modeButton: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func DarkMode(_ sender: Any) {
        if modeButton.isOn {
            self.view.backgroundColor = UIColor.darkGray
        } else {
            self.view.backgroundColor = UIColor.white
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
