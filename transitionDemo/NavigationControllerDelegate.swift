//
//  NavigationControllerDelegate.swift
//  transitionDemo
//
//  Created by Bruce Lee on 3/2/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return DetailTransitioningAnimator(duration: 0.3)
    }
}
