//
//  ContentViewController.swift
//  Assignment5_0427
//
//  Created by H.Namikawa on 2023/04/27.
//

import UIKit

class ContentViewController: UIViewController {
  
  var isLiked = false
  var isBookmarked = false
  
  let appleImgV = {
    let img = UIImage(named: "apple_logo")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let bookmarkImgV = {
    let img = UIImage(named: "bookmark")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let bookmarkFilledImgV = {
    let img = UIImage(named: "bookmark_filled")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let bookmarkBtn = {
    let btn = UIButton()
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setImage(UIImage(named: "bookmark"), for: .normal)
    btn.widthAnchor.constraint(equalToConstant: 40).isActive = true
    btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return btn
  }()
  
  let dotsImgV = {
    let img = UIImage(named: "dots")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let heartImgV = {
    let img = UIImage(named: "heart")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let heartFilledImgV = {
    let img = UIImage(named: "heart_filled")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let heartBtn = {
    let btn = UIButton()
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setImage(UIImage(named: "heart"), for: .normal)
    btn.widthAnchor.constraint(equalToConstant: 40).isActive = true
    btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return btn
  }()
  
  let messageImgV = {
    let img = UIImage(named: "message")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let sentImgV = {
    let img = UIImage(named: "sent")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    imgV.widthAnchor.constraint(equalToConstant: 40).isActive = true
    imgV.heightAnchor.constraint(equalToConstant: 40).isActive = true
    return imgV
  }()
  
  let openMacImgV = {
    let img = UIImage(named: "open_mac")
    let imgV = UIImageView(image: img)
    imgV.translatesAutoresizingMaskIntoConstraints = false
    imgV.contentMode = .scaleToFill
    return imgV
  }()
  
  let appleLbl = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "apple"
    lbl.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    return lbl
  }()
  
  let likedLbl = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "liked by"
    lbl.font = UIFont.systemFont(ofSize: 17, weight: .medium)
    return lbl
  }()
  
  let likePersonLbl = {
    let lbl = UILabel()
    lbl.translatesAutoresizingMaskIntoConstraints = false
    lbl.text = "apple"
    lbl.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    return lbl
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  private func updateUI(){
    view.backgroundColor = .white
    let contentsSV = UIStackView()
    contentsSV.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(contentsSV)
    contentsSV.axis = .vertical
    contentsSV.alignment = .center
    contentsSV.distribution = .equalSpacing
    contentsSV.spacing = 5
    contentsSV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    contentsSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
    contentsSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    contentsSV.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    // top icons
    let topWrapSV = UIStackView()
    contentsSV.addArrangedSubview(topWrapSV)
    topWrapSV.translatesAutoresizingMaskIntoConstraints = false
    topWrapSV.axis = .horizontal
    topWrapSV.spacing = 0
    topWrapSV.alignment = .center
    topWrapSV.distribution = .fill
    topWrapSV.widthAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
    
    let topLeftSV = UIStackView(arrangedSubviews: [appleImgV, appleLbl, UIView()])
    topLeftSV.translatesAutoresizingMaskIntoConstraints = false
    topWrapSV.addArrangedSubview(topLeftSV)
    topLeftSV.axis = .horizontal
    topLeftSV.spacing = 5
    topLeftSV.alignment = .center
    topLeftSV.distribution = .fill
    topLeftSV.widthAnchor.constraint(equalTo: topWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    
    let topRightSV = UIStackView(arrangedSubviews: [UIView(), dotsImgV])
    topRightSV.translatesAutoresizingMaskIntoConstraints = false
    topWrapSV.addArrangedSubview(topRightSV)
    topRightSV.axis = .horizontal
    topRightSV.spacing = 5
    topRightSV.alignment = .center
    topRightSV.distribution = .fill
    topRightSV.widthAnchor.constraint(equalTo: topWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    
    // image
    contentsSV.addArrangedSubview(openMacImgV)
    openMacImgV.widthAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
    openMacImgV.heightAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
    
    // bottom icons
    let bottomWrapSV = UIStackView()
    contentsSV.addArrangedSubview(bottomWrapSV)
    bottomWrapSV.translatesAutoresizingMaskIntoConstraints = false
    bottomWrapSV.axis = .horizontal
    bottomWrapSV.spacing = 0
    bottomWrapSV.alignment = .center
    bottomWrapSV.distribution = .fill
    bottomWrapSV.widthAnchor.constraint(equalTo: contentsSV.widthAnchor).isActive = true
    
    let bottomLeftSV = UIStackView(arrangedSubviews: [heartBtn, messageImgV, sentImgV, UIView()])
    bottomLeftSV.translatesAutoresizingMaskIntoConstraints = false
    bottomWrapSV.addArrangedSubview(bottomLeftSV)
    bottomLeftSV.axis = .horizontal
    bottomLeftSV.spacing = 5
    bottomLeftSV.alignment = .center
    bottomLeftSV.distribution = .fill
    bottomLeftSV.widthAnchor.constraint(equalTo: bottomWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    
    let bottomRightSV = UIStackView(arrangedSubviews: [UIView(), bookmarkBtn])
    bottomRightSV.translatesAutoresizingMaskIntoConstraints = false
    bottomWrapSV.addArrangedSubview(bottomRightSV)
    bottomRightSV.axis = .horizontal
    bottomRightSV.spacing = 5
    bottomRightSV.alignment = .center
    bottomRightSV.distribution = .fill
    bottomRightSV.widthAnchor.constraint(equalTo: bottomWrapSV.widthAnchor, multiplier: 0.5).isActive = true
    
    // like
    let likeSV = UIStackView(arrangedSubviews: [likedLbl, likePersonLbl, UIView()])
    likeSV.translatesAutoresizingMaskIntoConstraints = false
    contentsSV.addArrangedSubview(likeSV)
    likeSV.axis = .horizontal
    likeSV.spacing = 5
    likeSV.alignment = .center
    likeSV.distribution = .fill
    likeSV.widthAnchor.constraint(equalTo: bottomWrapSV.widthAnchor, multiplier: 1).isActive = true
    
    bookmarkBtn.addTarget(self, action: #selector(bookmark(_:)), for: .touchUpInside)
    heartBtn.addTarget(self, action: #selector(like(_:)), for: .touchUpInside)
  }
  
  @objc func bookmark(_ sender: UIButton){
    isBookmarked = !isBookmarked
    if isBookmarked {
      sender.setImage(UIImage(named: "bookmark_filled"), for: .normal)
    } else {
      sender.setImage(UIImage(named: "bookmark"), for: .normal)
    }
  }
  
  @objc func like(_ sender: UIButton){
    isLiked = !isLiked
    if isLiked {
      sender.setImage(UIImage(named: "heart_filled"), for: .normal)
    } else {
      sender.setImage(UIImage(named: "heart"), for: .normal)
    }
  }
}
