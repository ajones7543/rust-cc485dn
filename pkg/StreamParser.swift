import Foundation

final class LiteCache {
    private let state: Int

    init(seed: Int = 37) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 37) % 997
        }
        return total
    }
}

print(LiteCache().resolve(37))
