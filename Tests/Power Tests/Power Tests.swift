import Power
import Testing

enum `Power Tests` {}

extension `Power Tests` {
    @Suite struct `Power is a kind of quantity in watts` {
        @Test func `Its dimension is length: 2, mass: 1, time: -3`() {
            #expect(Power.dimension == Quantity.Dimension(length: 2, mass: 1, time: -3))
        }

        @Test func `An amount given in watts keeps its scalar`() {
            #expect(Power.watts(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A power is an energy over a duration` {
        @Test func `Its dimension balances`() {
            #expect(Power.dimension == Energy.dimension / Time.Duration.dimension)
        }

        @Test func `An energy over a duration, and back`() {
            let power = Energy.joules(6.0) / Time.Duration.seconds(2.0)
            #expect(power == Power.watts(3.0))
            #expect(power * Time.Duration.seconds(2.0) == Energy.joules(6.0))
        }
    }
}
