//
//  WeatherServiceError.swift
//  Weather
//
//  Created by Ted on 2021/08/11.
//

import Foundation

enum WeatherServiceError: Error, LocalizedError {
    
    case clientError
    case invalidStatusCode
    case noData
    case decodeError
    case unknown
    case invalidCity
    case custom(description: String)
    
    var errorDescription: String? {
        switch self {
        case .clientError:
            return "client Error"
        case .invalidStatusCode:
            return "Hey, this is a invalid status code"
        case .noData:
            return "Hey, There is No Data"
        case .decodeError:
            return "Hey, this is a decode Error!"
        case .unknown:
            return "Hey, this is an unknown Error!"
        case .invalidCity:
            return "This is an invalid city. Please try again."
        case .custom(let description):
            return description
        }
    }
}
