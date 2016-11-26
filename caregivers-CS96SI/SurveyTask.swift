//
//  SurveyTask.swift
//  caregivers-CS96SI
//
//  Created by Jackie Ennis on 10/29/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import Foundation
import ResearchKit

public var SurveyTask: ORKOrderedTask {

    var steps = [ORKStep]()
    
    let introStep = ORKInstructionStep(identifier: "introStep")
    introStep.title = NSLocalizedString("Worried about a loved one?", comment: "")
    introStep.text  =
        NSLocalizedString("Press 'Next' to find out if an Alzheimer's screening may be right for you or a loved one. DISCLAIMER: The following recommendation is for strictly informational and educational purposes only. It is not meant to replace or substitute the recommendations or advice of your physician or health care provider. The recommendation should not be used for diagnosing or treating a health problem or disease.", comment: "")
    steps += [introStep]
    
    let q1 = ORKQuestionStep(identifier: "q1")
    q1.title = NSLocalizedString("Does the patient have more trouble remembering things then he/she used to?", comment: "")
    q1.answerFormat = ORKBooleanAnswerFormat()
    steps += [q1]
    
    let q2 = ORKQuestionStep(identifier: "q2")
    q2.title = NSLocalizedString("Does he or she have more trouble recalling conversations a few days later?", comment: "")
    q2.answerFormat = ORKBooleanAnswerFormat()
    steps += [q2]
    
    let q3 = ORKQuestionStep(identifier: "q3")
    q3.title = NSLocalizedString("When speaking, does the patient have more difficulty in finding the right word or tend to use the wrong words often?", comment: "")
    q3.answerFormat = ORKBooleanAnswerFormat()
    steps += [q3]
    
    let q4 = ORKQuestionStep(identifier: "q4")
    q4.title = NSLocalizedString("Is the patient less able to manage money or financial affairs (e.g. paying bills, budgeting)?", comment: "")
    q4.answerFormat = ORKBooleanAnswerFormat()
    steps += [q4]
    
    let q5 = ORKQuestionStep(identifier: "q5")
    q5.title = NSLocalizedString("Is the patient less able to manage his or her own medication independently?", comment: "")
    q5.answerFormat = ORKBooleanAnswerFormat()
    steps += [q5]
    
    let q6 = ORKQuestionStep(identifier: "q6")
    q6.title = NSLocalizedString("Does the patient require assistance with public or private transport?", comment: "")
    q6.answerFormat = ORKBooleanAnswerFormat()
    steps += [q6]
    
    let completionStep = ORKOrderedTask.makeCompletionStep()
    steps += [completionStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
    
    
    
}
