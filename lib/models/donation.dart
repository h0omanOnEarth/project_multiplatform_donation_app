class Donation {
  String imagePath;
  String title;
  String subtitle;
  String description;
  String fundraiser;
  bool isFundraiserVerified;
  int daysLeft;
  int donaterCount;
  double progress;
  int collectedAmount;

  Donation({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.fundraiser,
    required this.isFundraiserVerified,
    required this.daysLeft,
    required this.donaterCount,
    required this.progress,
    required this.collectedAmount,
  });
}
