//
//  OAuthSwiftSha1SigningProtocol.swift
//  OAuthSwift
//
//  Created by Kris Jones on 06/09/2017.
//  Copyright © 2017 Dongri Jin. All rights reserved.
//

import Foundation

public protocol OAuthSwiftSha1SigningProtocol {
  func sign(message: String, key: String) -> Data
}
