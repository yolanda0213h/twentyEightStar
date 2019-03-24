//
//  matchTestViewController.swift
//  twentyEightStar
//
//  Created by Yolanda H. on 2019/3/20.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class matchTestViewController: UIViewController {

    @IBOutlet weak var iphoneSwitch: UISwitch!
    @IBOutlet weak var animalSegment: UISegmentedControl!
    @IBOutlet weak var tempSlider: UISlider!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var twentyEightAnswerButton: UIButton!
    @IBOutlet weak var twentyEightView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func twentyEightChooseFunc(_ sender: UIButton) {
        twentyEightAnswerButton.setTitle(sender.currentTitle, for: UIControl.State.normal)
    }
    @IBAction func disappearFunc(_ sender: UIButton) {
        twentyEightView.alpha = 0
        twentyEightView.frame.origin.y = 900
    }
    @IBAction func twentyEightOpenFunc(_ sender: UIButton) {
        twentyEightView.alpha = 1
        twentyEightView.frame.origin.y = 330
    }
   
    @IBAction func startTest(_ sender: UIButton) {
        var starAnswer = ""
        switch twentyEightAnswerButton.currentTitle {
        case "胃土雉":
            starAnswer = "命星關係\n你和我相同星宿，有相同的性格，懷著類同的抱負，有極多的共同點，假如是拍檔，可為共同目標奮鬥，是一種優良的緣分。"
        case "昴日雞":
            starAnswer = "榮親關係\n你是我的榮星，我是你的親星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "翼火蛇":
            starAnswer = "榮親關係\n你是我的榮星，我是你的親星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "斗木獬":
            starAnswer = "榮親關係\n你是我的榮星，我是你的親星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "婁金狗":
            starAnswer = "榮親關係\n你是我的親星，我是你的榮星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "星日馬":
            starAnswer = "榮親關係\n你是我的親星，我是你的榮星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "尾火虎":
            starAnswer = "榮親關係\n你是我的親星，我是你的榮星，榮星是繁榮親星的一方，親星是親近榮星的一方，雙方相處會有親近溫情的感覺，如同兄弟姐妹一樣。"
        case "觜火猴":
            starAnswer = "安壞關係\n你是我的安居星，我是你的破壞星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "虛日鼠":
            starAnswer = "安壞關係\n你是我的安居星，我是你的破壞星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "角木蛟":
            starAnswer = "安壞關係\n你是我的安居星，我是你的破壞星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "壁水貐":
            starAnswer = "安壞關係\n你是我的破壞星，我是你的安居星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "鬼金羊":
            starAnswer = "安壞關係\n你是我的破壞星，我是你的安居星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "房日兔":
            starAnswer = "安壞關係\n你是我的破壞星，我是你的安居星，破壞星吃定安居星，兩人最好的關係是破壞星為老師，安居星為學生，因為學生被老師吃定，就能獲得師傅的真傳。"
        case "張月鹿":
            starAnswer = "業胎關係\n你是我的業星，我是你的胎星，業胎關係是同生死的因果，故會形影不離，業星是有債要還給胎星，然而業星的債若一旦還清，便能果斷離開。"
        case "箕水豹":
            starAnswer = "業胎關係\n你是我的胎星，我是你的業星，業胎關係是同生死的因果，故會形影不離，業星是有債要還給胎星，然而業星的債若一旦還清，便能果斷離開。"
        case "奎木狼":
            starAnswer = "友衰關係\n你是我的友星，我是你的衰星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "柳土獐":
            starAnswer = "友衰關係\n你是我的友星，我是你的衰星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "心月狐":
            starAnswer = "友衰關係\n你是我的友星，我是你的衰星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "畢月鳥":
            starAnswer = "友衰關係\n你是我的衰星，我是你的友星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "女土蝠":
            starAnswer = "友衰關係\n你是我的衰星，我是你的友星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "軫水蚓":
            starAnswer = "友衰關係\n你是我的衰星，我是你的友星，友衰關係表示有共同嗜好，但在金錢上不宜合作。友衰是助緣關係，友星可以增強第三方星的力量，衰星則可以減弱力量。"
        case "室火豬":
            starAnswer = "危成關係\n你是我的成就星，我是你的危害星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        case "井木犴":
            starAnswer = "危成關係\n你是我的成就星，我是你的危害星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        case "氐土貉":
            starAnswer = "危成關係\n你是我的成就星，我是你的危害星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        case "參水猿":
            starAnswer = "危成關係\n你是我的危害星，我是你的成就星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        case "危月燕":
            starAnswer = "危成關係\n你是我的危害星，我是你的成就星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        case "亢金龍":
            starAnswer = "危成關係\n你是我的危害星，我是你的成就星，危害星表示在事業上危害對方，成就星表示在事業上成就對方，成就星是事業與金錢上的貴人。"
        default:
            starAnswer = "請選擇星宿!"

        }
        var animalAnswer = ""
        switch animalSegment.selectedSegmentIndex {
        case 1:
            animalAnswer = "\n\n我沒那麼喜歡狗呢"
        case 3:
            animalAnswer = "\n\n我沒那麼喜歡狗呢"
        default:
            animalAnswer = ""
        }
        var tempAnswer = ""
        if tempSlider.value > 28 {
            tempAnswer = "\n\n溫感不合 我們感覺不適"
        }
        if iphoneSwitch.isOn {
            testLabel.text = starAnswer + animalAnswer + tempAnswer
        } else {
            testLabel.text = "居然不愛甜食！我們不是一路人呢！\n其他就沒什麼好說的"
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
