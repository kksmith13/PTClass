//
//  DetailView.swift
//  Beer Cub
//
//  Created by Kyle Smith on 11/6/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "brewery")
        iv.backgroundColor = .purple
        return iv
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Address:"
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Our label"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    let hLabel: UILabel = {
        let label = UILabel()
        label.text = "Hours:"
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    let hoursLabel: UILabel = {
        let label = UILabel()
        label.text = "Our label"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .white
    }
    
    func setupViews() {
        addSubview(imageView)
        addSubview(addressLabel)
        addSubview(locationLabel)
        addSubview(hLabel)
        addSubview(hoursLabel)
        
        addConstraintsWithFormat(format: "V:|-64-[v0(344)]-[v1(24)]-32-[v2(24)]", views: imageView, addressLabel, hLabel)
        addConstraintsWithFormat(format: "H:|[v0]|", views: imageView)
        addConstraintsWithFormat(format: "H:|-[v0(128)]-16-[v1]-|", views: addressLabel, locationLabel)
        addConstraintsWithFormat(format: "V:|-416-[v0(48)]-[v1(24)]", views: locationLabel, hoursLabel)
        addConstraintsWithFormat(format: "H:|-[v0(128)]-16-[v1]-|", views: hLabel, hoursLabel)
//        _ = imageView.anchor(safeAreaLayoutGuide.topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: frame.width)
////        _ = locationLabel.anchor(imageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 24)
//        _ = hoursLabel.anchor(locationLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 24)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
