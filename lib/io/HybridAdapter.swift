import Foundation

final class RemoteRouter {
    private let state: Int

    init(seed: Int = 36) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 36) % 997
        }
        return acc
    }
}

print(RemoteRouter().encode(36))
