//
//  ByvModalNavigationController.swift
//  Pods
//
//  Created by Adrian Apodaca on 21/11/16.
//
//

import UIKit

open class ByvModalNav: UINavigationController, UINavigationControllerDelegate {
    
    open var onlyInRoot:Bool = true
    open var dismissAnimated:Bool = true
    
    open var shouldDismissHandler:(() -> Bool)? = nil
    open var willDismissHandler:(() -> Void)? = nil
    open var didDismissHandler:(() -> Void)? = nil
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
    }
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if !onlyInRoot || self.viewControllers[0] == viewController {
            let closeBtn = UIBarButtonItem.init(barButtonSystemItem: .stop, target: self, action: #selector(closePressed))
            if onlyInRoot {
                viewController.navigationItem.leftBarButtonItem = closeBtn
            } else {
                viewController.navigationItem.rightBarButtonItem = closeBtn
            }
        }
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func closePressed() {
        if let handler = self.shouldDismissHandler, !handler() {
            return
        }
        if let handler = self.willDismissHandler {
            handler()
        }
        self.dismiss(animated: dismissAnimated, completion: {
            if let handler = self.didDismissHandler {
                handler()
            }
        })
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
