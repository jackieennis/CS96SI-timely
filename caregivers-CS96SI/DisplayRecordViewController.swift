//
//  DisplayRecordViewController.swift
//  caregivers-CS96SI
//
//  Created by Jackie Ennis on 11/28/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import UIKit

class DisplayRecordViewController: UIViewController {
    @IBOutlet weak var recordContentTextView: UITextView!
    @IBOutlet weak var recordContentTextField: UITextField!
    
    var record: Record?

    override func viewDidLoad() {
        super.viewDidLoad()
        recordContentTextField.text = ""
        recordContentTextView.text = ""

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let recordTableViewController = segue.destination as! RecordsTableTableViewController
        if segue.identifier == "save" {
            if let record = record {
                record.title = recordContentTextField.text ?? ""
                record.content = recordContentTextView.text ?? ""
                recordTableViewController.tableView.reloadData()
            } else {
                let record = Record()
                record.title = recordContentTextField.text ?? ""
                record.content = recordContentTextView.text
//                record.date = NSDate()
                recordTableViewController.records.append(record)
                recordTableViewController.tableView.reloadData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let record = record {
            recordContentTextField.text = record.title
            recordContentTextView.text = record.content
        } else {
            recordContentTextField.text = ""
            recordContentTextView.text = ""
        }
    }

    /*
    // MARK: -
     
     Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
