module Recurly
  class Charge < RecurlyBase
    self.element_name = "charge"
    self.prefix = "/accounts/:account_code/"

    def self.list(account_code)
      find(:all, :params => { :account_code => account_code })
    end

    def self.lookup(account_code, id)
      find(id, :params => { :account_code => account_code })
    end

  end
end