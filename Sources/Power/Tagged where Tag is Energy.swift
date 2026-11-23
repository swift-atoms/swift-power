public import Quantity

extension Tagged::Tagged where Tag == Energy, Underlying: FloatingPoint {
    /// The power of this energy spent in `rhs`.
    @inlinable
    public static func / (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Power.Value<Underlying> {
        Power.watts(lhs.underlying / rhs.underlying)
    }
}
