//
//  main.swift
//  SimpleCalc
//
//  Created by Saif Mustafa on 4/3/17.
//  Copyright © 2017 saifm. All rights reserved.
//

import Foundation

print ("Enter an expression seperated by returns:");
print ("or");
print ("Enter numbers separated by space with an operation in the end in this format: 2 4 6 8 10 avg");
print ("");
print ("(This program also supports negative & decimal arithmetic)");
print ("");

    let input = readLine(strippingNewline: true)!;
    let inputArray = input.components(separatedBy: " ");

    // For multi-line inputs

    if (inputArray.count < 2) {
        
        let x = Double(inputArray[0].trimmingCharacters(in: NSCharacterSet.whitespaces));
        let operation = readLine(strippingNewline: true)!.trimmingCharacters(in: NSCharacterSet.whitespaces);
        let y = Double(readLine(strippingNewline: true)!.trimmingCharacters(in: NSCharacterSet.whitespaces));
        
        switch (operation) {
            
            case "+" : print("Result: \(x! + y!)");
            
            case "-" : print("Result: \(x! - y!)");
            
            case "*" : print("Result: \(x! * y!)");
            
            case "/" : print("Result: \(x! / y!)");
            
            case "%" : print("Result: \(x!.truncatingRemainder(dividingBy: y!))")
            
            default : print("Error! Please Enter Valid Expressions!");
            
        }
        
        print("");
        
    } else {  // for Single-line inputs
        
        let lastElement = inputArray[inputArray.count - 1].trimmingCharacters(in: NSCharacterSet.whitespaces);
        
        switch (lastElement) {
            
            case "count" : print("Count => \(inputArray.count - 1)");
            
            case "avg" :
            
                var sum = 0.0;
            
                for val in 0...(inputArray.count - 2) {
                
                    sum = sum + Double(inputArray[val])!;
                    
                }
            
                sum = sum / Double(inputArray.count - 1);
                
                print ("Average => \(sum)");
            
            case "fact" :
            
                if(inputArray.count <= 2 && Int(inputArray[0])! >= 0) {
                
                    var fact = 1;
                    
                    if (Int(inputArray[0])! > 0) {
                        
                        for val in 1...Int(inputArray[0])! {
                            
                            fact = fact * val;
                            
                        }
                        
                    }
                    
                    print("Fact => \(fact)");
                    
                } else {
                    
                    print("Only one number at a time! No negative numbers allowed!");
                    
                }
            
            default : print("Error! Please Enter Valid Expressions!");
            
        }
        
    }
