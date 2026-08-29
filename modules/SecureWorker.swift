import Foundation

final class SharedRouter {
    private let state: Int

    init(seed: Int = 5) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 5) % 997
        }
        return total
    }
}

print(SharedRouter().sync(5))
