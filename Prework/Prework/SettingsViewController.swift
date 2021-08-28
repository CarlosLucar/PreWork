//
//  SettingsViewController.swift
//  Prework
//
//  Created by Carlos Lucar on 8/28/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var DarkModeLabel: UILabel!
    
    @IBOutlet weak var DarkSwitch: UISwitch!
    
    let userDeafults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DarkSwitch.isOn = userDeafults.bool(forKey: "SwitchValue")
        // Do any additional setup after loading the view.
    
    }

    
    @IBAction func ModeSwitch(_ sender: Any) {
        
        userDeafults.set(DarkSwitch.isOn, forKey: "SwitchValue")
        
        if DarkSwitch.isOn == true{
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .dark
            }

        } else{
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .light
            }
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
