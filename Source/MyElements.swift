//
//  ButtonView.swift
//  DateTimePicker
//
//  Created by Rishabh Kesarwani on 15/11/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class MyElements {
    
    public var orangeColor = UIColor(red: 245.0/255.0, green: 166.0/255.0, blue: 35.0/255.0, alpha: 1)
    public var blueColor = UIColor(red: 26.0/255.0, green: 180.0/255.0, blue: 203.0/255.0, alpha: 1)
    public var darkColor = UIColor(red: 0, green: 22.0/255.0, blue: 39.0/255.0, alpha: 1)
    
    func myContentView (x: CGFloat, y: CGFloat, width: CGFloat) -> UIView {
        
        let contentHeight: CGFloat = 400
        
        let contentView = UIView(frame: CGRect(x: x, y: y, width: width, height: contentHeight))
        contentView.layer.shadowColor = UIColor(white: 0, alpha: 0.3).cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: -1.5)
        contentView.layer.shadowRadius = 0
        contentView.layer.shadowOpacity = 0.5
        contentView.backgroundColor = .white
        contentView.isHidden = true
        
        return contentView
    }
    
    func myCollectionViewLayout(width: CGFloat, height: CGFloat) -> StepCollectionViewFlowLayout {
        let layout = StepCollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: width, height: height)
        return layout
    }
    
    func myBorder(x: CGFloat, y: CGFloat, length: CGFloat) -> UIView {
        let borderWidth: CGFloat = 1
        let border = UIView(frame: CGRect(x: x, y: y, width: length, height: borderWidth))
        border.backgroundColor = darkColor.withAlphaComponent(0.2)
        return border
    }
    
    func myButton (x: CGFloat, y: CGFloat, width: CGFloat, title: String, backgroundColor: UIColor) -> UIButton {
        
        let height:CGFloat = 44
        let button = UIButton(type: .system)
        
        button.frame = CGRect(x: x, y: y, width: width, height: height)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = backgroundColor
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(DateTimePicker.dismissView), for: .touchUpInside)
        
        return button
    }
    
}
