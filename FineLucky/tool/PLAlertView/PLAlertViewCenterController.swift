//
//  PLAlertViewController.swift
//  PLAlertController
//
//  Created by Yu chengJhuo on 11/20/16.
//  Copyright © 2016 Yu-cheng Jhuo. All rights reserved.
//

import UIKit


public typealias JoinCompletion = () -> Void

public typealias CreateCompletion = () -> Void

class PLAlertViewCenterController: UIViewController {

    @IBOutlet weak var btnJoin: UIButton!
    @IBOutlet weak var btnCreate: UIButton!
    
     var onJoinCompletion: JoinCompletion?
     var onCreateCompletion: CreateCompletion?
     var transitioner : CAVTransitioner

    init( onJoinCompletion: @escaping JoinCompletion , onCreateCompletion:    @escaping CreateCompletion) {
        self.transitioner = CAVTransitioner()
        super.init(nibName: nil, bundle: nil)
    
        self.onJoinCompletion = onJoinCompletion
        self.onCreateCompletion = onCreateCompletion
      
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = self.transitioner
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        // Do any additional setup after loading the view.
//        self.labTitle.text = self.TitleMsg
//
//        switch self.type {
//        case 1:
//            self.btnType1Left.isHidden = true
//            self.btnType1Right.isHidden = true
//
//
//            self.btnType2.isHidden = false
//            self.btnType2.setTitle(self.centerText, for: .normal)
//            self.btnType2.addTarget(self, action: #selector(PLAlertViewController.centerClick(_:)), for: .touchUpInside)
//
//            let border = CALayer()
//            border.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 0.5)
//            border.backgroundColor = lineColor
//            self.btnType2.layer.addSublayer(border)
//
//            break
//        case 2:
//            self.btnType1Left.isHidden = false
//            self.btnType1Right.isHidden = false
//            self.btnType2.isHidden = true
//            self.btnType1Left.setTitle(self.leftText, for: .normal)
//            self.btnType1Right.setTitle(self.rightText, for: .normal)
//
//            let border = CALayer()
//            border.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width/2, height: 0.5)
//            border.backgroundColor = lineColor
//            self.btnType1Left.layer.addSublayer(border)
//
//            let border1 = CALayer()
//            border1.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width/2, height: 0.5)
//            border1.backgroundColor = lineColor
//            self.btnType1Right.layer.addSublayer(border1)
//
//            let border2 = CALayer()
//            border2.frame = CGRect.init(x: 0, y: 0, width: 0.5, height: 37)
//            border2.backgroundColor = lineColor
//            self.btnType1Right.layer.addSublayer(border2)
//
//
//            break
//        default:
//            break
//        }
//
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func joinClick(){
      self.hideView()
        self.onJoinCompletion!()
      
    }
    
    @IBAction func createClick(){
       self.hideView()
        self.onCreateCompletion!()
      
    }


    
    // Close SCLAlertView
    open func hideView() {
         self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}


class NonHighlightingButton: UIButton {
    override var isHighlighted: Bool {
        set { }
        get { return super.isHighlighted }
    }
}
