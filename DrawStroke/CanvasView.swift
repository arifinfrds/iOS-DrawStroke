//
//  CanvasView.swift
//  DrawStroke
//
//  Created by Arifin Firdaus on 6/29/19.
//  Copyright © 2019 Arifin Firdaus. All rights reserved.
//

import UIKit

@IBDesignable
class CanvasView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .lightGray
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        backgroundColor = .lightGray
    }
    
    override func draw(_ rect: CGRect) {
        drawHorizontalAxis()
        drawVerticalAxis()
    }
    
    fileprivate func drawHorizontalAxis() {
        let path = UIBezierPath()
        let initialPoint = CGPoint(x: 0, y: frame.height / 2)
        path.move(to: initialPoint)
        
        let finishPoint = CGPoint(x: frame.width, y: frame.height / 2)
        path.addLine(to: finishPoint)
        
        path.lineWidth = 4
        
        path.close()
        
        UIColor.black.set()
        path.stroke()
        
        path.fill()
    }
    
    fileprivate func drawVerticalAxis() {
        let path = UIBezierPath()
        let initialPoint = CGPoint(x: frame.width / 2, y: 0)
        path.move(to: initialPoint)
        
        let finishPoint = CGPoint(x: frame.width / 2, y: frame.height)
        path.addLine(to: finishPoint)
        
        path.lineWidth = 4
        
        path.close()
        
        UIColor.black.set()
        path.stroke()
        
        path.fill()
    }
    
}
