class DonationService{
  static double  donations = 0;


  double get getDonations{
    return donations;
  }

  void setDonations(String sum) {
    donations += num.tryParse(sum)?.toDouble();
  }
}