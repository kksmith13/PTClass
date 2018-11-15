//
//  DetailView.swift
//  Beer Cub
//
//  Created by Kyle Smith on 11/6/18.
//  Copyright © 2018 smithcoding. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let brewery: Brewery
    lazy var detailView: DetailView = {
        let view = DetailView(frame: self.view.frame)
        return view
    }()
    
    init(brewery: Brewery) {
        self.brewery = brewery
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = brewery.title
        detailView.locationLabel.text = brewery.location
        detailView.hoursLabel.text = brewery.hours
        detailView.imageView.image = brewery.image
        view.addSubview(detailView)
    }
}
