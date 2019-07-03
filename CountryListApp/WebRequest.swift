//
//  WebRequest.swift
//  CountryProject
//
//  Created by Kailash Dabhi on 29/06/19.
//  Copyright © 2019 Kailash Dabhi. All rights reserved.
//

import Foundation

let urlSession = URLSession.shared
let url = URL(string :"https://restcountries.eu/rest/v2/all")

let task = urlSession.dataTask(with: url!) {data, response, error in
    guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
        return
    }
    guard let mime = response!.mimeType , mime == "application/json" else {
        print("Wrong MIME type!")
        return
    }
    do {
       let json =  try  JSONSerialization.jsonObject(with: data!, options: [])
        print(json)
    }
    catch{
        
    }
}
func make(){
    task.resume()
}
