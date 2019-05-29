//
//  ViewController.swift
//  textField
//
//  Created by mac on 29/05/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textConfiguration()
        configureTap()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func configureTap(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handletap))
            view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handletap(){
    view.endEditing(true)
    }
    private func textConfiguration() {
        textField1.delegate=self
        textField2.delegate=self
        
    }
    @IBAction func login(_ sender: Any) {
        view.endEditing(true)
    }
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
    
    
    


