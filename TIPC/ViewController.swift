//
//  ViewController.swift
//  TIPC
//
//  Created by Navya Nidhanapati on 9/7/14.
//  Copyright (c) 2014 Navya Nidhanapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var BillAmount: UITextField!
    @IBOutlet weak var TipPercent: UISegmentedControl!
    var flag=1;
   // var tipPercentage=[10.00,12.00,18.00]
    @IBAction func CalcTip(sender: AnyObject)
    {
        var tipPercentage = [TipPercent.titleForSegmentAtIndex(0),TipPercent.titleForSegmentAtIndex(1),TipPercent.titleForSegmentAtIndex(2)]
        var tipPercentageValue = NSString(string: tipPercentage[TipPercent.selectedSegmentIndex]!).doubleValue
        print(tipPercentageValue)
        var billAmountValue=NSString(string: BillAmount.text).doubleValue
        var tipValue = billAmountValue*(tipPercentageValue/100)
        var totalValue = billAmountValue + tipValue
        Tip.text = NSString(format: "$%.2f", tipValue)
        Total.text = NSString(format: "$%.2f", totalValue)
    }
    
    override func viewWillAppear(animated: Bool) {
        print("hhhh")
        if flag==1
        {print("donothing")}
        else
        {
            var defaults = NSUserDefaults.standardUserDefaults()
            var changeValueTip = defaults.objectForKey("tippercent") as String
            var segmentNumber = defaults.objectForKey("segmentnumber") as String
            TipPercent.setTitle("\(changeValueTip)%", forSegmentAtIndex: NSString(string: segmentNumber).integerValue)
            CalcTip(self)

            
        }
    }
    override func viewWillDisappear(animated: Bool) {
        print("blah")
        flag=0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapAction(sender: AnyObject) {
                view.endEditing(true)
        
    }

}

