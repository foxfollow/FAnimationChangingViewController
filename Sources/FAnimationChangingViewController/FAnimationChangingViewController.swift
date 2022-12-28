//
//
//  FAnimationChangingViewController
//
//  Created by Heorhii Savoiskyi on 27.12.2022.
//

import UIKit

extension UINavigationController {
    
    func finePushViewController(_ controller: UIViewController,
                                animationType: CATransitionType = .push,
                                animationSubType: CATransitionSubtype? = nil,
                                duration: CFTimeInterval = 0.4) {
        
        let transition = CATransition()
        transition.duration = duration
        transition.type = animationType
        if animationSubType != nil {
            transition.subtype = animationSubType
        }
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        
        pushViewController(controller, animated: false)
        
    }
    
    func finePopViewController(popToRoot: Bool,
                               animationType: CATransitionType = .push,
                               animationSubType: CATransitionSubtype? = nil,
                               duration: CFTimeInterval = 0.4) {
        
        let transition = CATransition()
        transition.duration = duration
        transition.type = animationType
        if animationSubType != nil {
            transition.subtype = animationSubType
        }
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        
        if popToRoot {
            popToRootViewController(animated: false)
        } else {
            popViewController(animated: false)
        }
        
    }
}

