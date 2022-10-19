//
//  Anime_Helper.swift
//  PublicAPI
//
//  Created by Tueloper on 2022-10-18.
//

import Foundation
class Ghibli_Helper
{

       static  private let urlSring = "https://ghibliapi.herokuapp.com/films";
    
       static  private let session:URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
       }()
    
    static public func fetchDir()
        {
//            check if its a valid url
            guard
                let url = URL(string: urlSring)
            else{
                preconditionFailure("Not able to convert  \(urlSring)")
            }
            
//            initiate the URL request
            let request = URLRequest(url: url)
            let task = session.dataTask(with: request) { data, response ,error  in
                if let data = data {
                    do {
                        let jsonData = try JSONSerialization.jsonObject(with: data)
                        
                        print(jsonData)

                  
                    } catch let error{
                        print ("\(error)")
                    }
                }
                else if error != nil {
                    print("There is no data or data corrupted")
                } else {
                    print("Error with URL")

                }
            }
            task.resume()
        }
      }



