public import Quantity

extension Tagged::Tagged where Tag == Power, Underlying: Numeric {
    /// The energy of this power over `rhs`.
    @inlinable
    public static func * (lhs: Self, rhs: Time.Duration.Value<Underlying>) -> Energy.Value<Underlying> {
        Energy.joules(lhs.underlying * rhs.underlying)
    }
}
