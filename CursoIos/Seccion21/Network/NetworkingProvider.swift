//
//  NetworkingProvider.swift
//  CursoIos
//
//  Created by Nicolas Pepe on 25/01/2023.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    static let shared = NetworkingProvider()
    private let kBaseURL = "https://gorest.co.in/public/v2/"
    private let kStatusOk = 200...299
    
    func getUser(id: Int){
        let url = "\(kBaseURL)users/\(id)"
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: User.self) {
            response in
            if let user = response.value {
                print(user)
            } else {
                print(response.error?.responseCode ?? "Error")
            }
        }
    }
}
