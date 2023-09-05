String converAmount(int amount) {
  List<String> listAmount = amount.toString().split('');
  if (listAmount.length > 3) {
    switch (listAmount.length) {
      case 4:
        listAmount.insert(1, ' ');
        return listAmount.join();

      case 5:
        listAmount.insert(2, ' ');
        return listAmount.join();

      case 6:
        listAmount.insert(3, ' ');
        return listAmount.join();

      default:
        return amount.toString();
    }
  } else {
    return amount.toString();
  }
}
