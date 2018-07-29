//
//  CustomOverlayView.swift
//  Streaks
//
//  Created by Vaed Prasad on 7/26/18.
//  Copyright © 2018 Vaed Prasad. All rights reserved.
//

    
    import UIKit
    import Koloda
    
    private let overlayRightImageName = "overlay_like"
    private let overlayLeftImageName = "overlay_skip"
    
    class CustomOverlayView: OverlayView {
        
        @IBOutlet lazy var overlayImageView: UIImageView! = {
            [unowned self] in
            
            var imageView = UIImageView(frame: self.bounds)
            self.addSubview(imageView)
            
            return imageView
            }()
        
        override var overlayState: SwipeResultDirection?  {
            didSet {
                switch overlayState {
                case .left? :
                    overlayImageView.image = UIImage(named: overlayLeftImageName)
                case .right? :
                    overlayImageView.image = UIImage(named: overlayRightImageName)
                default:
                    overlayImageView.image = nil
                }
                
            }
        }
        
    }
