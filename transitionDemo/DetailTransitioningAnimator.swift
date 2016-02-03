//
//  DetailTransitioningAnimator.swift
//  transitionDemo
//
//  Created by Bruce Lee on 3/2/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class DetailTransitioningAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    let durationTimeInterval: NSTimeInterval
    
    init(duration: NSTimeInterval){
        durationTimeInterval = duration
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return self.durationTimeInterval
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView()
        let sourceController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)
        let destController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
        
        
        let sourceView = sourceController!.view
        let destView = destController!.view
        
        containerView?.addSubview(destView)
        
        destView.alpha = 0.0
        
        UIView.animateWithDuration(0.3, animations: {
            destView.alpha = 1.0
        }, completion: {completed in
            let cancelled = transitionContext.transitionWasCancelled()
            transitionContext.completeTransition(!cancelled)
        })
    }
    
    func animationEnded(transitionCompleted: Bool) {
        
    }
}
