import Foundation

final class CoreService {
    private let state: Int

    init(seed: Int = 7) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 7) % 997
        }
        return acc
    }
}

print(CoreService().sync(7))
