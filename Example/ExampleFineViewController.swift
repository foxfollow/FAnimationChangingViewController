//
//  ExampleFineViewController.swift
//  FAnimationChangingViewController
//
//  Created by Heorhii Savoiskyi on 27.12.2022.
//

import UIKit

class ExampleFineViewController: UIViewController {

    let centerButton = UIButton()
    let topButton = UIButton()
    let bottomButton = UIButton()
    let leftButton = UIButton()
    let rightButton = UIButton()
    
//    let vc = ViewController()

    var valueColor: Int = .random(in: 0...4)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColor()
        setupButtons()
        addConstraints()
        
    }
}

extension ExampleFineViewController {
    func changeColor() {
        print(valueColor)
        switch valueColor {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .systemGray
        case 2:
            view.backgroundColor = .systemYellow
        case 3:
            view.backgroundColor = .orange
        default:
            view.backgroundColor = .purple
        }
    }

    func setupButtons() {
//        view.backgroundColor = .black
        title = "Made by d3f0ld"
                
        centerButton.setTitle("Pop", for: .normal)
        topButton.setTitle("Up", for: .normal)
        bottomButton.setTitle("Down", for: .normal)
        leftButton.setTitle("To Left", for: .normal)
        rightButton.setTitle("To Right", for: .normal)
        
        centerButton.addTarget(self, action: #selector(centerPop), for: .touchUpInside)
        topButton.addTarget(self, action: #selector(topPush), for: .touchUpInside)
        bottomButton.addTarget(self, action: #selector(botPush), for: .touchUpInside)
        leftButton.addTarget(self, action: #selector(leftPush), for: .touchUpInside)
        rightButton.addTarget(self, action: #selector(rightPush), for: .touchUpInside)
        
        view.addSubview(centerButton)
        view.addSubview(topButton)
        view.addSubview(bottomButton)
        view.addSubview(leftButton)
        view.addSubview(rightButton)
        
        view.subviews.forEach {
            $0.layer.cornerRadius = 20
            $0.backgroundColor = .systemMint
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    @objc func centerPop() {
        navigationController?.finePopViewController(popToRoot: false, animationType: .fade)
    }
    
    @objc func topPush() {
        navigationController?.finePushViewController(ExampleFineViewController(), animationSubType: .fromTop, duration: 1.0)
    }
    
    @objc func botPush() {
        navigationController?.finePushViewController(ExampleFineViewController(), animationType: .moveIn, animationSubType: .fromBottom)
    }
    
    @objc func leftPush() {
        navigationController?.finePushViewController(ExampleFineViewController())
    }

    @objc func rightPush() {
        navigationController?.finePushViewController(ExampleFineViewController(), animationSubType: .fromRight)
    }
    
    func addConstraints() {
        let vsa = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            centerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            centerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerButton.widthAnchor.constraint(equalToConstant: 100),
            centerButton.heightAnchor.constraint(equalToConstant: 40),
            
            topButton.centerXAnchor.constraint(equalTo: vsa.centerXAnchor),
            topButton.bottomAnchor.constraint(equalTo: centerButton.topAnchor, constant: -60),
            topButton.widthAnchor.constraint(equalToConstant: 100),
            topButton.heightAnchor.constraint(equalToConstant: 40),
            
            bottomButton.centerXAnchor.constraint(equalTo: vsa.centerXAnchor),
            bottomButton.topAnchor.constraint(equalTo: centerButton.bottomAnchor, constant: 60),
            bottomButton.widthAnchor.constraint(equalToConstant: 100),
            bottomButton.heightAnchor.constraint(equalToConstant: 40),

            leftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            leftButton.leftAnchor.constraint(equalTo: vsa.leftAnchor, constant: 20),
            leftButton.widthAnchor.constraint(equalToConstant: 100),
            leftButton.heightAnchor.constraint(equalToConstant: 40),
            
            rightButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rightButton.rightAnchor.constraint(equalTo: vsa.rightAnchor, constant: -20),
            rightButton.widthAnchor.constraint(equalToConstant: 100),
            rightButton.heightAnchor.constraint(equalToConstant: 40),
            
        ])
    }
}
