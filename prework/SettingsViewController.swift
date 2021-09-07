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
        changeMode()
        // Do any additional setup after loading the view.
    }
    
    func changeMode() {
        if modeButton.isOn {
            overrideUserInterfaceStyle = .dark
        } else {
            overrideUserInterfaceStyle = .light
            
        }
    }
    @IBAction func DarkMode(_ sender: Any) {
        changeMode()
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
