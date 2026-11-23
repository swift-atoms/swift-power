# swift-power

Use this package when a value is power: how fast energy flows. Start from `Power`, a kind of quantity of swift-quantity, and make an amount with `Power.watts(_:)`; it is a `Power.Value<Scalar>`, a `Tagged<Power, Scalar>`.

## Laws

- An amount of power is stored in watts, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: 2, mass: 1, time: -3 (exponents of the base dimensions).
- Amounts of power add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- An energy over a duration is a power, and a power times a duration is an energy (declared here, since energy cannot depend on power).
