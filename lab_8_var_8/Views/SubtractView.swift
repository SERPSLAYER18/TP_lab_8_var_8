//
//  Subtract.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import Foundation

import UIKit

@IBDesignable class SubtractionView: UIView {
    let rhombusLayer = CAShapeLayer()
    let starLayer = CAShapeLayer()
    
    public override func draw(_ rect : CGRect){
        rhombusLayer.path = Tetragon().path(frame.size).cgPath
        rhombusLayer.fillColor = UIColor.red.cgColor
        rhombusLayer.strokeColor = UIColor.red.cgColor
        rhombusLayer.lineWidth = 3.0
        
        
        starLayer.path = Star().path(frame.size).cgPath
        starLayer.fillColor = UIColor.white.cgColor
        starLayer.strokeColor = UIColor.white.cgColor
        starLayer.lineWidth = 3.0
        
        layer.addSublayer(rhombusLayer)
        layer.addSublayer(starLayer)
    }
}
