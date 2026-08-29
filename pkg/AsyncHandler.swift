import Foundation

final class LocalBuilder {
    private let state: Int

    init(seed: Int = 54) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 54) % 997
        }
        return total
    }
}

print(LocalBuilder().handle(54))
