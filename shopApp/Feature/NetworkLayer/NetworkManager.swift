//
//  NetworkManager.swift
//  shopApp
//
//  Created by CANSU on 12.08.2024.
//

import Foundation
import Alamofire

final class NetworkManager {
    func request<T : Codable>(url : URL, method : HTTPMethod, completion : @escaping(Result<T, AFError>)->Void){
        AF.request(url,method:method).responseDecodable(of: T.self){
            response in
            switch response.result{
            case .success(let value):
                completion(.success(value))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
