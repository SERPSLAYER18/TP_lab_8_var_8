//
//  RhombusView.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import Foundation
import UIKit

class Tetragon {
    func path(_ size: CGSize) -> UIBezierPath {
        
        let w = size.width
        let h = size.height
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: w, y: 0))
        path.addLine(to: CGPoint(x: w, y: h))
        path.addLine(to: CGPoint(x: 0, y: h))
        path.addLine(to: CGPoint(x: 0, y:0))
        path.close()
        return path
    }
}

@IBDesignable class TetragonView: UIView {
    let shapeLayer = CAShapeLayer()
    var size:Int!
    public override func draw(_ rect : CGRect){
        shapeLayer.path = Tetragon().path(frame.size).cgPath
        shapeLayer.fillColor = UIColor.red.cgColor
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 3.0
        shapeLayer.shadowRadius = 10.0
        shapeLayer.shadowOpacity = 0.8
        shapeLayer.shadowOffset = CGSize.zero
        layer.addSublayer(shapeLayer)}
}
