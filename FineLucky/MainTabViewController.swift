//
//  MainTabViewController.swift
//  FineLucky
//
//  Created by Yu chengJhuo on 25/02/2018.
//  Copyright © 2018 Yu-cheng Jhuo. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

 public var nextViewController: ((GarlandAnimationController.TransitionDirection) -> MainTabViewController)?
   open var isPresenting = false
  fileprivate let garlandAnimationController = GarlandAnimationController()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      modalPresentationStyle = .custom
      transitioningDelegate = self
      
      
      nextViewController = { _ in
        let storeboard = ShareMethod.GetMainStoryBoard()
        let tabvc = storeboard.instantiateViewController(withIdentifier: "tabBarController") as! MainTabViewController
        return tabvc
      }
      
      let rightSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(rightGesture))
      rightSwipeGesture.direction = .right
      view.addGestureRecognizer(rightSwipeGesture)
      
      let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(leftGesture))
      leftSwipeGesture.direction = .left
      view.addGestureRecognizer(leftSwipeGesture)
      
      
      self.addCenterButton()
    }
  
  public func addCenterButton() {
    
            let unselectedImage = UIImage(named: "tabbar_camera_normal.png")
            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            tabBar.addSubview(button)
    
            view.addConstraint(NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0));
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[button]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["button": button]));
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[button(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["button": button]));
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[button(50)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["button": button]));
    
            button.addTarget(self, action:  #selector(MainTabViewController.PopView), for: .touchUpInside)
            button.setBackgroundImage(unselectedImage, for: UIControlState())
  }
  
  @objc func PopView() {
    let alertView = PLAlertViewCenterController(onJoinCompletion: {
      
    }) {
      let storyboard = ShareMethod.GetMainStoryBoard()
      let nav = storyboard.instantiateViewController(withIdentifier: "CreateActivityNavigation")
      self.present(nav, animated: true, completion: nil)
    }
   self.present(alertView, animated: true, completion: nil)
  }
  
  
  @objc func leftGesture(gesture: UIPanGestureRecognizer) {
    if (self.selectedViewController is MainGarlandViewController){
      performTransition(direction: .left)
    }
  }
  
  @objc func rightGesture(gesture: UIPanGestureRecognizer) {
    if (self.selectedViewController is MainGarlandViewController){
      performTransition(direction: .right)
    }
  }
  
  private func performTransition(direction: GarlandAnimationController.TransitionDirection) {
    
    guard !isPresenting else { return }
    guard let vc = nextViewController?(direction) else { return }
    isPresenting = true
    vc.garlandAnimationController.transitionDirection = direction
    present(vc, animated: true, completion: nil)
  }
  
}
extension MainTabViewController: UIViewControllerTransitioningDelegate {

  func animationController(forPresented presented: UIViewController,
                           presenting: UIViewController,
                           source: UIViewController) -> UIViewControllerAnimatedTransitioning? {

    let transition = garlandAnimationController
    return transition

  }
  
//  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//    let transition = SKSimpleTransition()
//    return transition
//  }
  
}
