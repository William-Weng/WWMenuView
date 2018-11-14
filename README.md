# WWMenuView
一個自訂的側邊選單 (上傳至Cocoapods) 

[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Version](https://img.shields.io/cocoapods/v/WWMenuView.svg?style=flat)](http://cocoapods.org/pods/WWMenuView) [![Platform](https://img.shields.io/cocoapods/p/WWMenuView.svg?style=flat)](http://cocoapods.org/pods/WWMenuView) [![License](https://img.shields.io/cocoapods/l/WWMenuView.svg?style=flat)](http://cocoapods.org/pods/WWMenuView)

![一個自訂的側邊選單 (上傳至Cocoapods)](https://raw.githubusercontent.com/William-Weng/WWMenuView/master/WWMenuView.gif)

# 使用範例
![IBOutlet](https://raw.githubusercontent.com/William-Weng/WWMenuView/master/IBOutlet.png)

```swift

import UIKit
import WWMenuView

// MARK: - 主要的ViewController
class MainViewController: WWMainViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initMenuContainerViews()
    }
    
    /// 初始化ContainerView
    private func initMenuContainerViews() {
        
        let containerViews = (main: UIView.init(frame: view.frame), menu: UIView.init(frame: view.frame))
        
        view.addSubview(containerViews.main)
        view.addSubview(containerViews.menu)
        
        (mainContainerView, menuContainerView) = (containerViews.main, containerViews.menu)
    }
}

// MARK: - 內容的ViewController
class Page1ViewController: WWPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 顯示側邊選單
    @IBAction func showMenu(_ sender: UIButton) {
        menuStatus(.show)
    }
    
    /// 隱藏側邊選單
    @IBAction func hideMenu(_ sender: UIButton) {
        menuStatus(.hide)
    }
}

class Page2ViewController: WWPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 顯示側邊選單
    @IBAction func showMenu(_ sender: UIButton) {
        menuStatus(.show)
    }
    
    /// 隱藏側邊選單
    @IBAction func hideMenu(_ sender: UIButton) {
        menuStatus(.hide)
    }
}

// MARK: - 選單的ViewController
class MenuViewController: WWMenuViewController {
    
    lazy var page1ViewController: Page1ViewController = {
        self.storyboard!.instantiateViewController(withIdentifier: "Page1") as! Page1ViewController
    }()

    lazy var page2ViewController: Page2ViewController = {
        self.storyboard!.instantiateViewController(withIdentifier: "Page2") as! Page2ViewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 移動到所選的ViewController
    @IBAction func showPage1(_ sender: UIButton) {
        changePage(to: page1ViewController)
    }
    
    /// 移動到所選的ViewController
    @IBAction func showPage2(_ sender: UIButton) {
        changePage(to: page2ViewController)
    }
}
```