class TransactionModel {
  final String title, date, amount;
  final bool iswithdrawal;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.iswithdrawal});
}
