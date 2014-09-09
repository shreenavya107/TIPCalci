//
//  SettingsViewController.swift
//  TIPC
//
//  Created by Navya Nidhanapati on 9/7/14.
//  Copyright (c) 2014 Navya Nidhanapati. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
         view.endEditing(true)
    }
    @IBOutlet weak var tipChange: UITextField!
    @IBOutlet weak var tipShift: UISegmentedControl!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        println("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        var tipChangeValue = tipChange.text
        var tipShiftNumber="\(tipShift.selectedSegmentIndex)"
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(tipChangeValue, forKey:"tippercent")
        defaults.setObject(tipShiftNumber,forKey:"segmentnumber")
        print("tipShiftNumber: \(tipShiftNumber)")
        
        println("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
