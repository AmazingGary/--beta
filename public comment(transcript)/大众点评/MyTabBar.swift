//
//  MyTabBar.swift
//  大众点评
//
//  Created by mac on 1.3.21.
//

import UIKit

class MyTabBar: UITabBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(publishButton)
    }
    
    private lazy var publishButton: UIButton = {
        let publishButton = UIButton(type: .custom)
        publishButton.setBackgroundImage(UIImage(named: "R63b56daab948fa920c63b3144b83c464"), for: .normal)
        publishButton.setBackgroundImage(UIImage(named: "R63b56daab948fa920c63b3144b83c464"), for: .selected)
        publishButton.sizeToFit()
        return publishButton
        

        // Do any additional setup after loading the view.
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let width = frame.width
        let height = frame.height
        
        publishButton.center = CGPoint(x: width * 0.5, y: height * 0.5)
        let Button1 = width * 0.2
        let Button2 = height
        let button3 = 0
        
        var index = 0
        
        for button in subviews {
            if !button.isKind(of: NSClassFromString("UITabBarButton")!){continue}
            let button4 = Button1 * (index > 1 ? CGFloat(index + 1) : CGFloat(index))
            button.frame = CGRect(x: button4, y: CGFloat(button3), width: Button1, height: Button2)
            index += 1
            }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
