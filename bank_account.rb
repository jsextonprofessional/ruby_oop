class BankAccount

    def initialize
        puts "BANK ACCOUNT SPAWN"
        @account_number = randomly_generated_account_number
        @checking_balance = 0
        @savings_balance = 0
    end

    # acct num should be generate by private method and be random
    def view_account_number
        puts @account_number
    end

    def view_checking_balance
        puts @checking_balance
    end

    def view_savings_balance
    end

    def view_total_balance
    end

    def deposit_into_checking

    end

    def deposit_into_savings
    end

    # return error if insufficient funds
    def withdraw_from_checking
    end

    def withdraw_from_savings
    end

    def track_accounts_count
    end
    
    # add interest_rate attribute inaccessible by the user, set to 0.01

    # display user's account number, total money, checking bal, saving bal, int rate
    def account_information
    end

    private
        def generate_account_number
            randomly_generated_account_number = rand(1000..9999)
        end

    # users should not be able to set any attributes from the bank account class 
end

# puts new_account = BankAccount.new
# puts BankAccount.view_checking_balance
# puts BankAccount.view_account_number