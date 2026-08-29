import Foundation

final class AsyncController {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 81) % 997
        }
        return total
    }
}

print(AsyncController().fetch(81))
