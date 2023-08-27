//
//  PhotoViewerViewController.swift
//  ChatApplication
//
//  Created by Hoang Nhan Nguyen Dinh on 2023-03-27.
//

import UIKit
import SDWebImage

final class PhotoViewerViewController: UIViewController {

    private let url: URL

    init(with url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Photo"
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .black
        view.addSubview(imageView)
        imageView.fetchUImageFromURL(url: url)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = view.bounds
    }


}
