import Foundation

final class SharedContext {
    private let state: Int

    init(seed: Int = 45) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 45) % 997
        }
        return value
    }
}

print(SharedContext().resolve(45))
