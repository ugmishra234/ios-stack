//
//  APIManager.swift
//  SwiftStub
//
//  Created by TT-MM-06 on 11/29/14.
//  Copyright (c) 2014 Tudip. All rights reserved.
//

import Foundation
import Alamofire
import Haneke
import SwiftyJSON

public enum ApiPath: String {
  case Register = "register"
  case Login = "login"
}

open class NetworkHelper<T: RecordTemplate> {
  
  let basePath: String = "http://citynext.co.in/lab/index.php/apimobilecustomer/"

  open func APICall(_ apiUrl : ApiPath,
                      parameters : Dictionary<String,AnyObject>,
                      success :((_ model : T) -> Void)? = nil,
                      unsuccessfull : (() -> Void)? = nil) {
    ActivityIndicatorHelper.sharedInstance.startLoader()
    
    Alamofire.request("\(basePath)\(apiUrl.rawValue)", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil)
//    Alamofire.request(URL(url: "\(basePath)\(apiUrl.rawValue)"),.POST, parameters : parameters)
      .responseJSON { (response:DataResponse<Any>) in
        ActivityIndicatorHelper.sharedInstance.stopLoader() {
          if response.result.error != nil {
            unsuccessfull?()
            AlertViewHelper.showSimpleError(response.result.error?.localizedDescription)
          } else {
            if let value = response.result.value {
              let data = NSDictionary(dictionary: value as! NSDictionary)
              success?(T(fromDictionary: data))
            } else {
              AlertViewHelper.showSimpleError("Server issue")
              unsuccessfull?()
            }
          }
        }
        
    }
  }
}


