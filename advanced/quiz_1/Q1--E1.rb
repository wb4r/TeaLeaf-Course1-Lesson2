require 'pry'

class SecurityLogger 
  def create_log_entry
    binding.pry
    files = File.new("log_file_#{@@pass_req_references}", "a+")
    File.open(files, "a+") do |file|
      file.write("User: #{user}, Password: #{pass}")
    end
  end
end


class SecretFile < SecurityLogger
  attr_reader :pass
  @@pass_req_references = 0
  
  def initialize(user, secret_pass)
    @@pass_req_references
    @user = user
    @pass = secret_pass
  end
  
  def consult_pass 
    create_log_entry
    @@pass_req_references += 1
    @pass
  end
  
  def self.pass_requests
    @@pass_req_reference
  end
  
end

credentials = SecretFile.new("el_mada_user","madafacapassword")

credentials.consult_pass
binding.pry