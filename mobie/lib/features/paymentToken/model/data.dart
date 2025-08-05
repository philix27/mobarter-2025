class PaymentTokenData {
  final String? address;
  final String? name;
  final String? logo;
  final String? chain;
  final double? decimals;
  final double? priceUSD;

  PaymentTokenData({
    required this.address,
    required this.name,
    required this.logo,
    required this.chain,
    required this.decimals,
    required this.priceUSD,
  });

  PaymentTokenData copyWith({
    String? address,
    String? name,
    String? logo,
    String? chain,
    double? decimals,
    double? priceUSD,
  }) {
    return PaymentTokenData(
      address: address ?? this.address,
      name: name ?? this.name,
      logo: logo ?? this.logo,
      chain: chain ?? this.chain,
      decimals: decimals ?? this.decimals,
      priceUSD: priceUSD ?? this.priceUSD,
    );
  }
}
