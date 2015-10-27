//
//  EmotionsQuestionsViewController.swift
//  Emotions Rating Scale
//
//  Created by Lauren Granger on 4/11/15.
//  Copyright (c) 2015 GDangerStudio. All rights reserved.
//

import UIKit

class EmotionQuestionsViewController: UIViewController{

    var startTime: NSTimeInterval = 0
    var endTime: NSTimeInterval = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTime = NSDate().timeIntervalSinceReferenceDate
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet var questionLabel: UILabel!
    
    var timeResultsStack = [String]()
    
    var questionsStack = ["HAPPY", "JOYFUL", "EXCITED", "ANXIOUS"]
    var questionResultsStack = [String]()
    var questionStackArrayIndex = 1

    
    @IBAction func RecordValueFromNumericalScaleOneToSeven(sender: UIButton) {
        
        endTime = NSDate().timeIntervalSinceReferenceDate
        timeResultsStack.append((endTime-startTime).time)
        
        let value = sender.currentTitle!
        questionResultsStack.append(value)
        
        if questionResultsStack.count < questionsStack.count{
            self.questionLabel.text = "how \(questionsStack[questionStackArrayIndex]) are you right now?"
            startTime = NSDate().timeIntervalSinceReferenceDate


            self.questionStackArrayIndex++

        }
        else{
            self.performSegueWithIdentifier("showResults", sender: nil)
            
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var DestViewController: ResultsViewController = segue.destinationViewController as! ResultsViewController
        
        DestViewController.questionResultsArray = questionsStack
        
        DestViewController.questionScoreResultsArray = questionResultsStack
        
        DestViewController.timeResultsArray = timeResultsStack
        
    }

}

extension NSTimeInterval {
    var time:String {
        return String(format:"%02d:%02d:%02d.%03d", Int((self/3600.0)%60),Int((self/60.0)%60), Int((self) % 60 ), Int(self*1000 % 1000 ) )
    }
}
