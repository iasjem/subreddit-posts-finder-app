//
//  RoundImageView.swift
//  subreddit-posts-finder
//
//  Created by Jemimah Beryl M. Sai on 10/09/2018.
//  Copyright © 2018 Jemimah Beryl M. Sai. All rights reserved.
//

import UIKit

@IBDesignable class RoundImageView: UIImageView {
    
    // MARK: Inspectable variables
    
    @IBInspectable var cornerRaidus: CGFloat = 0 {
        didSet {
            setCornerRadius(value: cornerRaidus)
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            setBorderWidth(value: borderWidth)
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            setBorderColor(value: borderColor)
        }
    }
    
    // MARK: Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCornerRadius(value: cornerRaidus)
        setBorderWidth(value: borderWidth)
        setBorderColor(value: borderColor)
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setCornerRadius(value: cornerRaidus)
        setBorderWidth(value: borderWidth)
        setBorderColor(value: borderColor)
    }
    
    override func prepareForInterfaceBuilder() {
        setCornerRadius(value: cornerRaidus)
        setBorderWidth(value: borderWidth)
        setBorderColor(value: borderColor)
    }
    
    // MARK: Setters
    
    func setCornerRadius(value: CGFloat) {
        layer.cornerRadius = value
    }
    
    func setBorderWidth(value: CGFloat) {
        layer.borderWidth = value
        
    }
    
    func setBorderColor(value: UIColor) {
        layer.borderColor = value.cgColor
    }
}
