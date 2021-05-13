//
//  StarView.swift
//  lab_8_var_8
//
//  Created by Admin on 13.05.2021.
//

import Foundation
import UIKit

class Star {
    func path(_ size: CGSize) -> UIBezierPath {
        
        let w : Double = Double(size.width)
        let h : Double = Double(size.height)
        let inner_radius : Double =  Double(min(w, h)/6)
        let outer_radius : Double =  min(w, h)/2
        let edges = 9
        var vector:[Double] = [0.0,1.0]
        let angle : Double = Double.pi / Double((edges))
        
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: w/2, y: h/2))
        
        for i in 0...(edges*2+1) {
            
            let new_x = vector[0]*cos(angle) + vector[1]*sin(angle)
            let new_y =  vector[1]*cos(angle) - vector[0]*sin(angle)
            vector[0] = new_x
            vector[1] = new_y
            var r_x : Double = Double(vector[0])
            var r_y : Double = Double(vector[1])
            if i % 2 == 1{
                r_x*=inner_radius
                r_y*=inner_radius
            }
            else{
                r_x*=outer_radius
                r_y*=outer_radius
            }
            
            path.addLine(to:CGPoint(x: w/2 + r_x, y: h/2 + r_y) )
            
        }
        
        path.close()
        return path
    }
}

@IBDesignable class StarView: UIView {
    let shapeLayer = CAShapeLayer()
    var size:Int!
    public override func draw(_ rect : CGRect){
        shapeLayer.path = Star().path(frame.size).cgPath
        shapeLayer.fillColor = UIColor.green.cgColor
        shapeLayer.strokeColor = UIColor.green.cgColor
        shapeLayer.lineWidth = 3.0
        shapeLayer.shadowRadius = 10.0
        shapeLayer.shadowOpacity = 0.8
        shapeLayer.shadowOffset = CGSize.zero
        layer.addSublayer(shapeLayer)}
}
