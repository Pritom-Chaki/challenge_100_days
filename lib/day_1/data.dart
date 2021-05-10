class Coin {
  final String imgUrl, coinValue, dollarValue, presentValue, percentChange;
  final bool isPositive;
  Coin(
      {this.imgUrl,
      this.coinValue,
      this.dollarValue,
      this.percentChange,
      this.presentValue,
      this.isPositive});
}

List<Coin> coinList = [
  Coin(
      imgUrl: 'assets/images/bit_coin.png',
      coinValue: '3.526020 BTC',
      dollarValue: '5.441',
      presentValue: '19.153',
      percentChange: '4.32',
      isPositive: true),
  Coin(
      imgUrl: 'assets/images/eth_coin.png',
      coinValue: '12.633681 ETH',
      dollarValue: '401',
      presentValue: '4.822',
      percentChange: '3.97',
      isPositive: true),
  Coin(
      imgUrl: 'assets/images/xrp_coin.png',
      coinValue: '1911.633681 XRP',
      dollarValue: '0.45',
      presentValue: '859',
      percentChange: '-13.55',
      isPositive: false)
];
var data = [
  0.8,
  1.0,
  1.2,
  0.7,
  1.25,
  1.2,
  0.3,
  1.3,
  1.1,
  0.0,
  1.2,
  0.7,
  1.25,
  1.2,
  0.6
];
