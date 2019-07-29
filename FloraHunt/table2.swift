//
//  File.swift
//  Plant Identifier
//
//  Created by harsh on 26/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class newtableview : UIViewController,WKNavigationDelegate,WKUIDelegate{
    var getsettings = String()
    var pdfname = ""
    var actInd : UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBOutlet weak var titlelabel: UILabel!
    
    @IBOutlet weak var webniew: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        super.viewDidLoad()
        self.webniew.navigationDelegate = self
        self.webniew.navigationDelegate = self
        self.webniew.uiDelegate = self
        actInd.frame = CGRect(x: 0.0, y :0.0 ,width: 40.0, height:40.0)
        actInd.center = webniew.center
        actInd.hidesWhenStopped = true
        actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        webniew.addSubview(actInd)
        
        
        let path = NSURL(fileURLWithPath: Bundle.main.path(forResource:pdfname, ofType:"pdf")!)
        let request = NSURLRequest(url:path as URL)
webniew.load(request as URLRequest)
        
        
        titlelabel.text = getsettings 
    
       
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.actInd.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.actInd.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.actInd.stopAnimating()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}
