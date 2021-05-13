//
//  ViewController.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var tetragonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tetragonView.addSubview(TetragonView())
    	
    }


}

	



   
