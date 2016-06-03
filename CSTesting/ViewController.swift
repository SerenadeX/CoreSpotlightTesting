//
//  ViewController.swift
//  CSTesting
//
//  Created by Rhett Rogers on 2/3/16.
//  Copyright © 2016 LyokoTech. All rights reserved.
//

import UIKit
import CoreSpotlight
import MobileCoreServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



        
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeImage as String)
        attributeSet.title = "First Test"
        attributeSet.contentDescription = "Open me first!"
        let item = CSSearchableItem(uniqueIdentifier: "1", domainIdentifier: "test1", attributeSet: attributeSet)
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item], completionHandler: nil)
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

