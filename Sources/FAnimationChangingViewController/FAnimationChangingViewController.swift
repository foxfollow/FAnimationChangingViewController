//
//
//  FAnimationChangingViewController
//MIT License
//
//Copyright (c) 2022 Heorhii Savoiskyi
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.


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

