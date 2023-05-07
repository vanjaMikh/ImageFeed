//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Ivan Mikhaylichenko on 22.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    private var label: UILabel?
    
    override func viewDidLoad() {
        func labelsPreSettings(_ label: UILabel) {
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
        }
        
        
        // profile image
        let profileImage = UIImage(named: "Profile Image")
        
        let profileImageView = UIImageView(image: profileImage)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.widthAnchor.constraint(equalToConstant: 70)
        ])
        
        // name label
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        
        labelsPreSettings(nameLabel)
        
        nameLabel.textColor = UIColor(named: "YP White (iOS)")
        nameLabel.font = .systemFont(ofSize: 23, weight: .semibold)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
        
        // login name label
        let  loginNameLabel = UILabel()
        loginNameLabel.text = "@ekaterina_nov"
        
        labelsPreSettings(loginNameLabel)
        
        loginNameLabel.font = .systemFont(ofSize: 13)
        loginNameLabel.textColor = UIColor(named: "YP Gray (iOS)")
        
        NSLayoutConstraint.activate([
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            loginNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor)
        ])
        
        // description label
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Hello, world!"
        
        labelsPreSettings(descriptionLabel)
        
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = UIColor(named: "YP White (iOS)")
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: loginNameLabel.leadingAnchor)
        ])
        
        // logout Button
        let logoutButton = UIButton.systemButton(
            with: UIImage(named: "Logout Button") ?? UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapLogoutButton))
        
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        
        logoutButton.tintColor = UIColor(named: "YP Red (iOS)")
        
        NSLayoutConstraint.activate([
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logoutButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 55)
        ])
    }
    
    @objc
    private func didTapLogoutButton() {
        label?.removeFromSuperview()
        label = nil
    }
        
        
        override var preferredStatusBarStyle: UIStatusBarStyle {
            return UIStatusBarStyle.lightContent
        }
    }
