//
//  ViewController.swift
//  Test
//
//  Created by Daniel Berger on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    let url = URL(string: "https://interview.plaid.com/plaid-first-round.txt")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else { return }
            
            let dataString = String(decoding: data, as: UTF8.self)
            var dataArray = [dataString]
            var resultArr = [[String]]()
            
        /*
            for i in dataArray {
                for j in i {
                    
//                    var iArray = Array(i)
//                    var jArray = Array(String(j))
////                    print("iArray: \(iArray[1...2])")
//                    print("jArray: \(jArray)")
//
                    
                     var element = [String]()
                    
                    var firstElement = i.index(after: i.startIndex)
                    var secondIndex = i.index(after: firstElement)
                    var thirdElement = i.index(after: secondIndex)
                    
                    var firstOpenBracket = i.firstIndex(of: "[")!
                    var firstcomma = i.firstIndex(of: ",")!
                    
                    var firstElementBeginning = i.index(after: firstOpenBracket)
                    var firstElementEnd = i.index(before: firstcomma)
                    
//                    print("Blah: \(i[firstElementBeginning...firstElementEnd])")
                    
                    var secondElementBeginning = i.index(after: firstElement)
                    
                    
//                    print("firstElement: \(i[firstElement]))")
//                    print("secondIndex: \(i[secondIndex]))")
//                    print("thirdElement: \(i[thirdElement]))")
//                    print("j: \(j)")
                    
//                    resultArr.insert(<#T##newElement: [Int]##[Int]#>, at: <#T##Int#>)
                
                    var jString = String(j)
                    var afterFirstBracket = jString.index(after: jString.startIndex)
                    var firstElementStart = jString.index(after: jString.index(after: afterFirstBracket))
                    print("firstElementStart: \(jString[firstElementStart...])")
                    
                    print("j: \(jString)")
                    
                    
                }
                */
//            }
            
            var firstElement = [String]()
            var secondElement = [String]()
            
            for i in dataArray {
                
                var arr = Array(i)
                
                // parsing first element
                if arr[1] != "[" && arr[2] != "]" {
                    firstElement.append(String(arr[1]))
                    firstElement.append(String(arr[2]))
                } else if arr[2] == "," {
                    firstElement.append(String(arr[1]))
                }
                
                // parsing second element
                if arr[2] == "," && arr[4] == ","{
                    secondElement.append(String(arr[3]))
                } else if arr[3] == "," && arr[5] == "," {
                    secondElement.append(String(arr[4]))
                }else if arr[3] == "," && arr[6] == "," {
                    secondElement.append(String(arr[4]))
                    secondElement.append(String(arr[5]))
                }
            }
            
            print(firstElement)
            
        }
        task.resume()
    }

}

