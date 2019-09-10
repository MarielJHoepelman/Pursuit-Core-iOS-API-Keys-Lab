//
//  File.swift
//  API_Key-Lab
//
//  Created by Mariel Hoepelman on 9/9/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import Foundation

import Foundation

enum AppError: Error {
    case badJSONError
    case networkError
    case noDataError
    case badHTTPResponse
    case badUrl
    case notFound //404 status code
    case unauthorized //403 and 401 status code
    case badImageData
    case other(errorDescription: String)
}
