//
//  TimeTableViewController.swift
//  TimeTableProject
//
//  Created by Bernard Hur on 06/02/2019.
//  Copyright © 2019 Bernard Hur. All rights reserved.
//

import UIKit
import SnapKit

class TimeTableViewController: UIViewController {

    let topView = UIView() //
    var currentYear = 2019 // 표시 년도
    var currentSemester = 1 // 표시 학기
    var currentTimeTableName = "시간표 이름" // 표시 시간표 이름
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTopView()
    }
    
    private final func configTopView() {
        view.addSubview(topView)  // topView 셋팅
        topView.backgroundColor = .green
        
        topView.snp.makeConstraints { (m) in
            m.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            m.height.equalTo(view).multipliedBy(0.1)
        }
        
        let yearAndSemesterLabel = UILabel() // 표시 년도,학기 라벨 셋팅
        
        topView.addSubview(yearAndSemesterLabel)
        yearAndSemesterLabel.numberOfLines = 2
        yearAndSemesterLabel.text = "\(currentYear)년 \(currentSemester)학기\n\(currentTimeTableName)"

        // 줄별 사이즈 조절 검토중
//        let fontSize = UIFont.boldSystemFont(ofSize: 30)
//        let attributedStr = NSMutableAttributedString(string: yearAndSemesterLabel.text ?? "No Data")
//        attributedStr.addAttribute(kCTFontAttributeName as String, value: fontSize, range: (text as NSString).range(of: "시간표 이름"))
//        yearAndSemesterLabel.attributedText = attributedStr
        yearAndSemesterLabel.backgroundColor = .yellow
    
        yearAndSemesterLabel.snp.makeConstraints { (m) in
            m.centerY.equalToSuperview()
            m.leading.equalToSuperview().offset(10)
            m.width.equalToSuperview().multipliedBy(0.5)
            m.height.equalToSuperview().multipliedBy(0.8)
        }
    }


}

