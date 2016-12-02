//
//  ViewController.swift
//  ByvModalNav
//
//  Created by Adrian on 12/02/2016.
//  Copyright (c) 2016 Adrian. All rights reserved.
//

import UIKit
import ByvModalNav

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showModal(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "tableViewId")
        let nav = ByvModalNav.init(rootViewController: controller)
        nav.shouldDismissHandler = {
            print("ByvModalNav should be dismissed")
            return true
        }
        nav.willDismissHandler = {
            print("ByvModalNav will be dismissed")
        }
        nav.didDismissHandler = {
            print("ByvModalNav dismissed!!!")
        }
        
        self.present(nav, animated: true, completion: nil)
    }
    
    @IBAction func notAllowed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "tableViewId")
        let nav = ByvModalNav.init(rootViewController: controller)
        nav.shouldDismissHandler = {
            print("ByvModalNav should never be dismissed!!! UAAA HHHHAAAA HHAAA!!!!")
            return false
        }
        nav.willDismissHandler = {
            print("ByvModalNav will be dismissed")
        }
        nav.didDismissHandler = {
            print("ByvModalNav dismissed!!!")
        }
        
        self.present(nav, animated: true, completion: nil)
    }

}

