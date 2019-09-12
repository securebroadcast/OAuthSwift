//
//  OAuthSwiftParametersExtension.swift
//  OAuthSwift
//
//  Created by Silvia Pititto on 12/09/2019.
//  Copyright © 2019 Dongri Jin. All rights reserved.
//

public extension OAuthSwift.Parameters {
  func filteredBy(_ predicate:  (_ key: Key, _ value: Value) -> Bool) -> OAuthSwift.Parameters {
    var filteredDictionary = [String: Any]()
    forEach { (key, value) in
      if !key.contains("oauth_") {
        filteredDictionary.updateValue(value, forKey: key)
      }
    }
    return filteredDictionary
  }
}
