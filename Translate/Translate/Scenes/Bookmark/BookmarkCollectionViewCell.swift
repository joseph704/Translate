//
//  BookmarkCollectionViewCell.swift
//  Translate
//
//  Created by Joseph Cha on 2022/07/18.
//

import SnapKit
import UIKit

final class BookmarkCollectionViewCell: UICollectionViewCell {
    static let identifier = "BookmarkCollectionViewCell"
    
    private var sourceBookmarkTextStackView: BookmarkTextStackView!
    private var targetBookmarkTextStatckView: BookmarkTextStackView!
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16.0
        
        stackView.layoutMargins = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        return stackView
    }()
    
    func setup(from bookmark: Bookmark) {
        backgroundColor = .systemBackground
        layer.cornerRadius = 12.0
        
        sourceBookmarkTextStackView = BookmarkTextStackView(
            language: bookmark.sourceLanguage,
            text: bookmark.sourceText,
            type: .source
        )
        
        targetBookmarkTextStatckView = BookmarkTextStackView(
            language: bookmark.translatedLanguage,
            text: bookmark.translatedText,
            type: .target
        )
        
        stackView.subviews.forEach { $0.removeFromSuperview() }
        
        [sourceBookmarkTextStackView,targetBookmarkTextStatckView]
            .forEach { stackView.addArrangedSubview($0) }
        
        addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(UIScreen.main.bounds.size.width - 32.0)
        }
        layoutIfNeeded()
    }
}
