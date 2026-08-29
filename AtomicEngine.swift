import Foundation

final class SimpleHandler {
    private let state: Int

    init(seed: Int = 55) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 55) % 997
        }
        return result
    }
}

print(SimpleHandler().run(55))
