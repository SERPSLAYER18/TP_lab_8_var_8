//
//  CompositeView.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import Foundation

import Foundation

import UIKit

@IBDesignable class CompositeView: UIView {
    let starLayer = CAShapeLayer()
    let tetragonLayer = CAShapeLayer()
  
    
    public override func draw(_ rect : CGRect){
        
        starLayer.path = Star().path(frame.size).cgPath
        starLayer.fillColor = UIColor.red.cgColor
        starLayer.strokeColor = UIColor.red.cgColor
        starLayer.lineWidth = 3.0
        
        tetragonLayer.path = Tetragon().path(frame.size).cgPath
        tetragonLayer.fillColor = UIColor.red.cgColor
        tetragonLayer.strokeColor = UIColor.red.cgColor
        tetragonLayer.lineWidth = 3.0
        //tetragonLayer.setAffineTransform(transform.scaledBy(x: 0.5, y: 0.5))
        
        tetragonLayer.setAffineTransform(
            transform.translatedBy(x: frame.size.height/4, y: frame.size.width/4).scaledBy(x: 0.5, y: 0.5)
        )
        
    
        
        
       
        
        layer.addSublayer(tetragonLayer)
        layer.addSublayer(starLayer)
    }
}
