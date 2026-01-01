#Create Account class with 2 attributes - balance & account no.
#Create methods for debit, credit & printing the balance.

class Account:
    def __init__(self, bal, acc):
        self.balance = bal
        self.account_no = acc


    #debit method
    def debit(self,amount):
        self.balance -= amount
        print("BDT.", amount,"was debited")
        print("Total balance = ",self.get_balance())


    #credit method
    def credit(self,amount):
        self.balance += amount
        print("BDT.",amount,"was credited")
        print("Total balance = ",self.get_balance())



    def get_balance(self):
        return self.balance


acc1 =Account(100000, 12345)
acc1.debit(1000)
acc1.credit(100000)
acc1.debit(50000)
acc1.credit(500000)
acc1.debit(100000)
acc1.credit(1000000)


