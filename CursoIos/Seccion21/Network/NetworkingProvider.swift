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
    private let kStatusOk = 200..<600
    
    func getUser(id: Int, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()){
        let url = "\(kBaseURL)users/\(id)"
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: User.self, decoder: Decoder()) {
            response in
            if let user = response.value {
                print(user)
                print(user.email)
                success(user)
            } else {
                failure(response.error)
            }
        }
    }
}