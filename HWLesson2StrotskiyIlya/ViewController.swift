//
//  ViewController.swift
//  HWLesson2StrotskiyIlya
//
//  Created by Strotskiysobaka on 22.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ДЗ:
        //• сумма отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2
        // *** проверка, является ли число четным
        
        var first = 2.5
        var second = 9.7
        var third = 6.9
        var forth = 8.2
        
        //сумма отдельно целых частей чисел
        
        var firstInt = Int(first)
        var secondInt = Int(second)
        var thirdInt = Int(third)
        var forthInt = Int(forth)
        
        var sumOfIntNumbers = firstInt + secondInt + thirdInt + forthInt
        print ("Сумма целых частей чисел равна " + String(sumOfIntNumbers))
        
        //сумма отдельно дробных частей чисел
        
        var firstFraction = first - Double(firstInt)
        var secondFraction = second - Double(secondInt)
        var thirdFraction = third - Double(thirdInt)
        var forthFraction = forth - Double(forthInt)
        
        var sumOfFractions = firstFraction + secondFraction + thirdFraction + forthFraction
        print ("Сумма дробных частей чисел равна " + String(sumOfFractions))
        
        //проверка является ли число четным для целых чисел
        
        if sumOfIntNumbers % 2 == 0 {
            print (String(sumOfIntNumbers) + " - это четное число")
        } else {
            print (String(sumOfIntNumbers) + " - это нечетное число")
        }
        
        //        проверка является ли число четным для дробных чисел
        
        var checkingFractions = (sumOfFractions).truncatingRemainder(dividingBy: (2.0)) == 0
        
        if checkingFractions == true {
            print (String(Float(sumOfFractions)) + "- это четное число")
        } else {
            print (String(Float(sumOfFractions)) + " - это нечетное число")
        }
        
        // через цикл
        let numm = [firstInt, secondInt, thirdInt, forthInt]
        for check in numm {
            if check % 2 == 0 {
                print ("Число \(check) является четным")
            } else {
                print ("Число \(check) является нечетным")
            }
    
        }
    
        
    }
}
