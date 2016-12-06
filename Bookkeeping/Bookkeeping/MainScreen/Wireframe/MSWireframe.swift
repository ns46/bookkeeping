//
//  MSWireframe.swift
//  Bookkeeping
//
//  Created by Vadim Bobr on 12/6/16.
//  Copyright © 2016 Vadim Bobr. All rights reserved.
//

import UIKit

let MSViewControllerIdentifier = "MSView"

class MSWireframe: NSObject {
    var msPresenter : MSPresenter?
    var msView : MSView?
    var msInteractor : MSInteractor?
    var rootWireframe = RootWireframe()
    
    func presentListInterfaceFromWindow(_ window: UIWindow) {
    
        let viewController = listViewControllerFromStoryboard()
        
        msView = viewController
        
        rootWireframe.showRootViewController(viewController, inWindow: window)
    }
    
    func listViewControllerFromStoryboard() -> MSView {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: MSViewControllerIdentifier) as! MSView
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard
    }
    
    
}
