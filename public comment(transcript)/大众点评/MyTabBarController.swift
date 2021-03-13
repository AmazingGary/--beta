//
//  MyTabBarController.swift
//  大众点评
//
//  Created by mac on 1.3.21.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(tabBar.subviews)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245 / 255.0, green: 93 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        
        addChildViewControllers()

    }
    
    func addChildViewControllers(){
        setChildViewController(HomeViewController(), title: "首页", imageName: "30460169_115718105252_2", selectedImageName: "30460169_115718105252_2")
        setChildViewController(MapViewController(), title: "地图", imageName: "R961681634181be9a01e675e1f22c464f", selectedImageName: "R961681634181be9a01e675e1f22c464f")
        setChildViewController(MessageViewController(), title: "消息", imageName: "IMG_0851(20210308-211053)", selectedImageName: "IMG_0851(20210308-211053)")
        setChildViewController(MineViewController(), title: "我的", imageName: "IMG_0850(20210308-211051)", selectedImageName: "IMG_0850(20210308-211051)")
        setValue(MyTabBar(), forKey: "tabBar")
    }
    func setChildViewController(_ childController:UIViewController, title: String, imageName: String, selectedImageName: String){
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childController.tabBarItem.title = title
        let X = MyNavigationController()
        X.navigationItem.title = title
        addChild(X)
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

