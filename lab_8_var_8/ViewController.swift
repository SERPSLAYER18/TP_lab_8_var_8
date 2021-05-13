//
//  ViewController.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Tetragon: TetragonView!
    @IBOutlet weak var Star: StarView!
    let options: UIView.AnimationOptions = [.curveEaseInOut,
                                            .repeat,
                                            .autoreverse]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //star animation
        UIView.animate(withDuration: 1,
                        delay: 0,
                        options: options,
                        animations: { [weak self] in
                            self?.Star.transform = CGAffineTransform(translationX: 0, y:  100)
                            self?.Star.alpha = 0.2
                            self?.Star.transform = CGAffineTransform(rotationAngle: 360)
         }, completion: nil)
        
        
        
        //tetra animation
        UIView.animate(withDuration: 2.9,
                        delay: 0,
                        options: options,
                        animations: { [weak self] in
                            self?.Tetragon.transform = CGAffineTransform(translationX: 0, y:  -100)
                            self?.Tetragon.transform = CGAffineTransform(scaleX: 1.3, y: 1)
         }, completion: nil)
        
    }


}

    



   

	



   
