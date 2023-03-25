//
//  PopOverView.swift
//  SQLiteSwiftDem
//
//  Created by Anuj Mohan Saxena on 27/05/19.
//  Copyright © 2019 Anuj Mohan Saxena. All rights reserved.
//

class PopoverView: UIView
{
     var image:UIImage?
    override  init(frame: CGRect) {
        super.init(frame: frame)
        self.xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.xibSetup()
    }
    
    func xibSetup() {
        
        let view: UIView? = loadViewFromNib()
        view?.frame = bounds
        view?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view?.backgroundColor = UIColor.black.withAlphaComponent(0.5)
     
        if let view = view {
            addSubview(view)
        }
    }
    
    func loadViewFromNib() -> UIView? {
        
        let nibViews = Bundle.main.loadNibNamed("PopoverView", owner: self, options: nil)
        
        return nibViews?[0] as? UIView
    }
}
