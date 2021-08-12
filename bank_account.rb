class BankAccount
    # users should not be able to set any attributes from the bank account class 
    attr_reader :account_number, :checking_balance, :savings_balance

    @@all_accounts = 0

    def initialize
        puts "BANK ACCOUNT SPAWN"
        @@all_accounts += 1
        # acct num should be generated by private method and be random
        @account_number = generate_account_number
        @checking_balance = 0
        @savings_balance = 0
        # add interest_rate attribute inaccessible by the user, set to 0.01
        @interest_rate = 0.01
    end

    def view_account_number
        puts @account_number
    end

    def view_checking_balance
        puts @checking_balance
    end

    def view_savings_balance
        puts @savings_balance
    end

    def view_total_balance
        puts "#{@checking_balance + @savings_balance}"
    end

    def deposit_into_checking(deposit)
        @checking_balance += deposit
    end

    def deposit_into_savings(deposit)
        @savings_balance += deposit
    end

    # return error if insufficient funds
    def withdraw_from_checking(withdrawal)
        if @checking_balance - withdrawal < 0
            puts "Insufficient Funds"
        else
            @checking_balance -= withdrawal
        end
    end

    def withdraw_from_savings(withdrawal)
        if @savings_balance - withdrawal < 0
            puts "Insufficient Funds"
        else
            @savings_balance -= withdrawal
            puts "#{@savings_balance}"
        end
    end
    
    # display user's account number, total money, checking bal, saving bal, int rate
    def account_information
        puts @account_number
        puts self.view_total_balance
        puts @checking_balance
        puts @savings_balance
        puts @interest_rate
    end

    def view_all_accounts
        puts @@all_accounts
    end

    private
        def generate_account_number
            Array.new(5).map { rand(0..9) }.join
        end

end

puts new_account = BankAccount.new
puts new_account.account_number
puts new_account.view_checking_balance
puts new_account.view_savings_balance
puts new_account.view_total_balance
puts new_account.deposit_into_checking(100)
puts new_account.deposit_into_savings(50)
puts new_account.withdraw_from_checking(50)
puts new_account.withdraw_from_savings(25)
puts new_account.account_information

# puts @@all_accounts
# puts BankAccount.view_checking_balance
# puts BankAccount.view_account_number