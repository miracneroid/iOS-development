#!/bin/bash

# Swift Code Snippets
# Common patterns and utility functions for iOS/macOS development

# Network Manager Singleton
cat << 'EOF'
// Network Manager Singleton Pattern
class NetworkManager {
    static let shared = NetworkManager()
    
    enum NetworkError: Error {
        case noData
        case invalidResponse
    }
    
    private init() {}
    
    func fetchData(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            completion(.success(data))
        }.resume()
    }
}
EOF

# UserDefaults Extension
cat << 'EOF'

// UserDefaults Extension for type-safe storage
extension UserDefaults {
    enum Keys {
        static let username = "username"
        static let isDarkMode = "isDarkMode"
    }
    
    var username: String? {
        get { string(forKey: Keys.username) }
        set { set(newValue, forKey: Keys.username) }
    }
    
    var isDarkMode: Bool {
        get { bool(forKey: Keys.isDarkMode) }
        set { set(newValue, forKey: Keys.isDarkMode) }
    }
}
EOF

# View Model Base Class
cat << 'EOF'

// Base ViewModel with Combine
import Combine

class BaseViewModel: ObservableObject {
    var cancellables = Set<AnyCancellable>()
    
    deinit {
        cancellables.forEach { $0.cancel() }
    }
}
EOF
