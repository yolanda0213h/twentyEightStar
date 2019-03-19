//
//  ViewController.swift
//  twentyEightStar
//
//  Created by Yolanda H. on 2019/3/19.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fourgodsImage: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var lunarLabel: UILabel!
    @IBOutlet weak var twentyEightLabel: UILabel!
    @IBOutlet weak var moonView: UIView!
    @IBOutlet weak var weekSegment: UISegmentedControl!
    @IBOutlet weak var leapSegment: UISegmentedControl!
    func dateFunc(){
        //轉農曆
        let format = DateFormatter()
        format.dateStyle = .long
        format.timeStyle = .none
        format.calendar = Calendar(identifier: .chinese)
        format.locale = Locale(identifier: "zh_TW")
        let date = datePicker.date
        let dateString = format.string(from: date)
        lunarLabel.text = "農曆日期：" + dateString
        print(dateString)
        
        //二十八宿
        let formatdate = DateFormatter()
        formatdate.dateFormat = "dd"
        formatdate.calendar = Calendar(identifier: .chinese)
        formatdate.locale = Locale(identifier: "zh_TW")
        let lunarDate = formatdate.string(from: date)
        let lunardateInt = Int(lunarDate)
        print(lunarDate)
        let star = ["火玄武-室火豬","水玄武-壁水貐","木白虎-奎木狼","金白虎-婁金狗","土白虎-胃土雉","日白虎-昴日雞","月白虎-畢月鳥","火白虎-觜火猴","水白虎-參水猿","木朱雀-井木犴","金朱雀-鬼金羊","土朱雀-柳土獐","日朱雀-星日馬","月朱雀-張月鹿","火朱雀-翼火蛇","水朱雀-軫水蚓","木青龍-角木蛟","金青龍-亢金龍","土青龍-氐土貉","日青龍-房日兔","月青龍-心月狐","火青龍-尾火虎","水青龍-箕水豹","木玄武-斗木獬","土玄武-女土蝠","日玄武-虛日鼠","月玄武-危月燕"]
        if dateString.contains("正月"){
            let starNumber = (lunardateInt! - 1)%27
                twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("二月") {
            let starNumber = (lunardateInt! - 1 + 2)%27
                twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("三月") {
            let starNumber = (lunardateInt! - 1 + 4)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("四月") {
            let starNumber = (lunardateInt! - 1 + 6)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("五月") {
            let starNumber = (lunardateInt! - 1 + 8)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("六月") {
            let starNumber = (lunardateInt! - 1 + 10)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("七月") {
            let starNumber = (lunardateInt! - 1 + 13)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("八月") {
            let starNumber = (lunardateInt! - 1 + 16)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("九月") {
            let starNumber = (lunardateInt! - 1 + 18)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("十月") {
            let starNumber = (lunardateInt! - 1 + 20)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("冬月") {
            let starNumber = (lunardateInt! - 1 + 23)%27
            twentyEightLabel.text = star[starNumber]
        }else if dateString.contains("臘月") {
            let starNumber = (lunardateInt! - 1 + 26)%27
            twentyEightLabel.text = star[starNumber]
        }
        let twentyEightText = twentyEightLabel.text!
        if twentyEightText.contains("青龍") {
            fourgodsImage.image = UIImage(named: "青龍")
        }else if twentyEightText.contains("白虎") {
            fourgodsImage.image = UIImage(named: "白虎")
        }else if twentyEightText.contains("朱雀") {
            fourgodsImage.image = UIImage(named: "朱雀")
        }else if twentyEightText.contains("玄武") {
            fourgodsImage.image = UIImage(named: "玄武")
        }
        if twentyEightText.contains("木"){
            moonView.backgroundColor = UIColor.green
        } else if twentyEightText.contains("金"){
            moonView.backgroundColor = UIColor.yellow
        } else if twentyEightText.contains("土"){
            moonView.backgroundColor = UIColor.brown
        } else if twentyEightText.contains("日"){
            moonView.backgroundColor = UIColor.orange
        } else if twentyEightText.contains("月"){
            moonView.backgroundColor = UIColor.lightGray
        } else if twentyEightText.contains("火"){
            moonView.backgroundColor = UIColor.purple
        } else if twentyEightText.contains("水"){
            moonView.backgroundColor = UIColor.cyan
        }
        //判斷weekday
        let formatweek = DateFormatter()
        formatweek.dateFormat = "E"
        formatweek.locale = Locale(identifier: "zh_TW")
        let week = formatweek.string(from: date)
        switch week {
        case "週日":
            weekSegment.selectedSegmentIndex = 0
        case "週一":
            weekSegment.selectedSegmentIndex = 1
        case "週二":
            weekSegment.selectedSegmentIndex = 2
        case "週三":
            weekSegment.selectedSegmentIndex = 3
        case "週四":
            weekSegment.selectedSegmentIndex = 4
        case "週五":
            weekSegment.selectedSegmentIndex = 5
        case "週六":
            weekSegment.selectedSegmentIndex = 6
        default:
            break
        }
        //判斷閏年
        let formatyear = DateFormatter()
        formatyear.dateFormat = "yyyy"
        let year = formatyear.string(from: date)
        let y = Int(year)
        if y! % 4 == 0, y! % 100 != 0 {
            leapSegment.selectedSegmentIndex = 1
        } else if y! % 400 == 0, y! % 3200 != 0 {
            leapSegment.selectedSegmentIndex = 1
        } else {
            leapSegment.selectedSegmentIndex = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFunc()
        // Do any additional setup after loading the view.
    }

    @IBAction func datePickerFunc(_ sender: UIDatePicker) {
        dateFunc()
    }
    
}

