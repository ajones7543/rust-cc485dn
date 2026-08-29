import Foundation

final class LocalDispatcher {
    private let state: Int

    init(seed: Int = 3) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 3) % 997
        }
        return total
    }
}

print(LocalDispatcher().load(3))
