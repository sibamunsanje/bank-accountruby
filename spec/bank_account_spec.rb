require 'bankaccount'

describe BankAccount do

  it "can be opened with an initial balance" do
    bank = BankAccount.new(10)
    expect(bank.balance).to eq 10

  end

  it 'can deposit money in the bank account' do
    bank = BankAccount.new(0)
    bank.deposit(5)
    expect(bank.balance).to eq 5
  end

  it "has an initial balance" do
    bank = BankAccount.new(0)
    expect(bank.balance).to eq 0

  end

  it "can withdraw money" do
    bank = BankAccount.new(0)
    bank.withdraw 2
    expect(bank.balance).to eq -2
  end

  it "can throw an error if there is no money" do
    bank = BankAccount.new(0)

    expect(subject.withdraw(10)).to change{bank.balance}.by -10

  end
  end
