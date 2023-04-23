//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Ivan Mikhaylichenko on 22.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var loginNameLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!

    @IBOutlet private var logoutButton: UIButton!

    @IBAction private func didTapLogoutButton() {
    }
}
