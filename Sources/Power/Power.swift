/// Power: how fast energy flows, stored in watts.
public enum Power {}

extension Power: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: 2, mass: 1, time: -3) }
}

extension Power {
    /// An amount of power, its scalar in watts.
    public typealias Value<Scalar> = Tagged<Power, Scalar>

    /// An amount of power given in watts.
    @inlinable
    public static func watts<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
