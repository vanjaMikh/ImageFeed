//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Ivan Mikhaylichenko on 22.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    private var label: UILabel?
    private let profileImageView = UIImageView(image: UIImage(named: "Profile Image"))
    private let nameLabel = UILabel()
    private let loginNameLabel = UILabel()
    private let descriptionLabel = UILabel()
    let logoutButton = UIButton.systemButton(
        with: UIImage(named: "Logout Button") ?? UIImage(systemName: "ipad.and.arrow.forward") ?? UIImage(),
        target: ProfileViewController.self,
        action: #selector(Self.didTapLogoutButton))
    
    
    override func viewDidLoad() {
        setupViews()
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            // profileImageView constraints
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            
            // nameLabel constraints
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            // loginNameLabel constraints
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            loginNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            // descriptionLabel constraints
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: loginNameLabel.leadingAnchor),
            
            // logoutButton constraints
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logoutButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 55)
        ])
    }
    
    private func setupViews() {
        // profile image
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        
        // name label
        nameLabel.text = "Екатерина Новикова"
        labelsPreSettings(nameLabel)
        nameLabel.textColor = UIColor(named: "YP White (iOS)")
        nameLabel.font = .systemFont(ofSize: 23, weight: .semibold)
        
        // login name label
        loginNameLabel.text = "@ekaterina_nov"
        labelsPreSettings(loginNameLabel)
        loginNameLabel.font = .systemFont(ofSize: 13)
        loginNameLabel.textColor = UIColor(named: "YP Gray (iOS)")
        
        // description label
        descriptionLabel.text = "Hello, world!"
        labelsPreSettings(descriptionLabel)
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = UIColor(named: "YP White (iOS)")
        
        // logout Button
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoutButton)
        logoutButton.tintColor = UIColor(named: "YP Red (iOS)")
    }
    
    private func labelsPreSettings(_ label: UILabel) {
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
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
