//
//  ResultsViewController.swift
//  Emotions Rating Scale
//
//  Created by Lauren Granger on 4/11/15.
//  Copyright (c) 2015 GDangerStudio. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController{
    
    
    var questionResultsArray = []
    var questionScoreResultsArray = []
    var timeResultsArray = []
    
    override func viewDidLoad() {
        
        var arrayCount = questionResultsArray.count
        println(arrayCount)
        
        for (index, value) in enumerate(questionResultsArray) {
                //self.QuestionResultsLabel.text = ("EMOTION \(value)")
            println(value)
        }
        for (index, value) in enumerate(questionScoreResultsArray){
                //self.QuestionScoreResultsLabel.text = ("SCORE \(value)")
             println(value)
        }
        for (index, value) in enumerate(timeResultsArray){
            //self.TimeResultsLabel.text = ("TIME \(value)")
            println(value)
        }
    }
    
    //@IBOutlet var QuestionResultsLabel: UILabel!

    //@IBOutlet var QuestionScoreResultsLabel: UILabel!
    
    //@IBOutlet var TimeResultsLabel: UILabel!

}

