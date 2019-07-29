//
//  TableViewController.swift
//  Plant Identifier
//
//  Created by harsh on 26/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    var settings : NSArray = []
    var details : NSArray = []
    var pdf = [String]()
    @IBOutlet var newtableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settings = ["About" , "Help", "Contact"]
        
         pdf = ["About" ,"Help", "Contact"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "newcell", for: indexPath)
            cell2.textLabel?.text = settings[indexPath.row] as? String
        cell2.textLabel?.font = UIFont(name: (cell2.textLabel?.font.fontName)!, size:30)
            return cell2
        }
        override func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let Storyboard = UIStoryboard(name: "Main", bundle: nil)
            let ntv = Storyboard.instantiateViewController(withIdentifier: "newtableview") as! newtableview
           ntv.getsettings = settings[indexPath.row] as! String
            ntv.pdfname = pdf[indexPath.row]
            self.navigationController?.pushViewController(ntv, animated: true)
            
            
            
        }
        
        
    }





