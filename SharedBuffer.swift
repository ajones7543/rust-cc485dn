import Foundation

final class AtomicDispatcher {
    private let state: Int

    init(seed: Int = 9) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 9) % 997
        }
        return acc
    }
}

print(AtomicDispatcher().handle(9))
