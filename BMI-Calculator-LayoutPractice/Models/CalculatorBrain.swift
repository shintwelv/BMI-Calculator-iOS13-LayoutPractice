//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by ShinIl Heo on 2022/09/05.
//  Copyright © 2022 App Brewery. All rights reserved.
//
import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight:Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case ..<18.5 :
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:
                        #colorLiteral(red: 0.1098039216, green: 0.8392156863, blue: 0.8078431373, alpha: 1))
        case 18.5...24.9 :
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color:  #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        default :
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:  #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .yellow
    }
}


