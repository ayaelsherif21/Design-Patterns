// Interface Segregation & Dependency Inversion (ISP, DIP)
abstract class PaymentMethod {
  void pay(double amount);
}

// Single Responsibility (SRP) & Open/Closed (OCP)
class CashPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$$amount in cash.");
  }
}

class CreditPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$$amount using credit card.");
  }
}

// Dependency Injection (DIP) for better flexibility
class PaymentProcessor {
  final PaymentMethod _paymentMethod;
  
  PaymentProcessor(this._paymentMethod);
  
  void processPayment(double amount) {
    _paymentMethod.pay(amount);
  }
}

void main() {
  PaymentProcessor cashPayment = PaymentProcessor(CashPayment());
  cashPayment.processPayment(500.0);
  
  PaymentProcessor creditPayment = PaymentProcessor(CreditPayment());
  creditPayment.processPayment(200.0);
}
