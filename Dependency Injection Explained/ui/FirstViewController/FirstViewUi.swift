//
// Created by Muhammad Yusuf Rosman on 17/09/2018.
// Copyright (c) 2018 Kyle Lee. All rights reserved.
//

import UIKit

extension FirstViewController {

    func setupUis() {

        self.view.backgroundColor = .white

        let bearImageView: UIImageView = {
            let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
            // this enables autolayout for our imageView
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

        let descriptionTextView: UITextView = {
            let textView = UITextView()
            textView.text = "Join us today in our fun and games!"
            textView.font = UIFont.boldSystemFont(ofSize: 18)
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.textAlignment = .center
            textView.isEditable = false
            textView.isScrollEnabled = false
            return textView
        }()

        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)

        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

    }
}
