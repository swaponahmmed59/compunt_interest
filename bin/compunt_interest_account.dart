import 'dart:io';
import 'dart:math';

void main() {
  print("Enter the principal amount: ");
  double principal = double.parse(stdin.readLineSync() ?? "0.0");
  print("Enter the annual interest rate (in percentage): ");
  double annualInterestRate = double.parse(stdin.readLineSync() ?? "0.0");
  print("Enter the number of times interest is compounded per year: ");
  int compoundsPerYear = int.parse(stdin.readLineSync() ?? "0");

  print("Enter the number of years: ");
  int years = int.parse(stdin.readLineSync() ?? "0");

  double futureValue = calculateCompoundInterest(
    principal,
    annualInterestRate,
    compoundsPerYear,
    years,
  );

  print(
      'After $years years, your investment will be worth it \$${futureValue.toStringAsFixed(2)}');
}

double calculateCompoundInterest(
  double principal,
  double annualInterestRate,
  int compoundsPerYear,
  int years,
) {
  double rate = annualInterestRate / 100;

  int n = compoundsPerYear * years;
  double compoundInterest = principal * pow(1 + (rate / compoundsPerYear), n);

  return compoundInterest;
}
