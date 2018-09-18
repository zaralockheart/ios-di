//
// Created by Muhammad Yusuf Rosman on 17/09/2018.
// Copyright (c) 2018 Kyle Lee. All rights reserved.
//

import UIKit

extension FirstViewController {

    func setupUis() {

        self.view.backgroundColor = .white
        
        let startFinishButton: UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        //        startFinishButton.frame = CGRect(x: 100.0, y: 100.0, width: 100.0, height: 50.0)
        startFinishButton.backgroundColor = .green
        startFinishButton.addTarget(self, action: #selector(self.buttonAction(_:)), for: .touchUpInside)
        
        self.view.addSubview(startFinishButton)
        NSLayoutConstraint.activate([
            startFinishButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startFinishButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            ])

        let bearImageView: UIImageView = {
            let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
            // this enables autolayout for our imageView
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

        view.addSubview(bearImageView)

        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

    }
}
