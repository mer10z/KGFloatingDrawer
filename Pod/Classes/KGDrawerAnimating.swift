//
//  KGDrawerAnimating.swift
//  KGDrawerViewController
//
//  Created by Kyle Goddard on 2015-02-10.
//  Copyright (c) 2015 Kyle Goddard. All rights reserved.
//

//import Foundation
import UIKit

public protocol KGDrawerAnimating {
    
    func openDrawer(_ side: KGDrawerSide, drawerView: UIView, centerView: UIView, animated: Bool, complete: @escaping (_ finished: Bool) -> Void)
    
    func dismissDrawer(_ side: KGDrawerSide, drawerView: UIView, centerView: UIView, animated: Bool, complete: @escaping (_ finished: Bool) -> Void)
    
    
    /**
    *  Called prior to a rotation event, while a drawer view is being shown.
    *
    *  @param side The currently open drawer side
    *  @param the containing side view that is shown.
    *  @param the containing centre view.
    */
    func willRotateWithDrawerOpen(_ side: KGDrawerSide, drawerView: UIView, centerView: UIView)
    
    /**
    *  Called following a rotation event, while a drawer view is being shown.
    *
    *  @param side The currently open drawer side
    *  @param the containing side view that is shown.
    *  @param the containing centre view.
    *  @param a complete block handler to handle cleanup.
    */
    func didRotateWithDrawerOpen(_ side: KGDrawerSide, drawerView: UIView, centerView: UIView)
    
}
