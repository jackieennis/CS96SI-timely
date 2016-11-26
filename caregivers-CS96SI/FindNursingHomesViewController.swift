//
//  FindNursingHomesViewController.swift
//  caregivers-CS96SI
//
//  Created by Kenny Batista on 11/25/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import UIKit

class FindNursingHomesViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    
    
    @IBAction func searchButton(_ sender: UIButton) {
//
        let zipCode = zipCodeTextField.text!
        
        let googleMapsTargetURL = NSURL(string: "comgooglemaps://?q=nursing%20homes%20near%20\(zipCode)")!
        let appleMapsTargetURL = NSURL(string: "http://maps.apple.com/?q=nursing%20homes%20near%20\(zipCode)")!
        
//        if UIApplication.shared.canOpenURL(googleMapsTargetURL as URL) == false {
//            UIApplication.shared.open(appleMapsTargetURL as URL, completionHandler: nil)
//        } else if UIApplication.shared.canOpenURL(googleMapsTargetURL as URL) == true {
//            UIApplication.shared.open(googleMapsTargetURL as URL, completionHandler: nil)
//        } else {
//            print("can't open any of this")
//        }
        
        if UIApplication.shared.canOpenURL(googleMapsTargetURL as URL) || UIApplication.shared.canOpenURL(appleMapsTargetURL as URL) {
            UIApplication.shared.open(googleMapsTargetURL as URL, completionHandler: nil)
        } else {
            UIApplication.shared.open(appleMapsTargetURL as URL, completionHandler: nil)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
