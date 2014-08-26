require_relative '../lib/email'
require_relative '../lib/send_with_us'

class DLite < Sinatra::Base

  def mailer
    @mailer ||= EMail.new
  end

  def ab_testing
    @swu ||= ABTesting.new
  end
end
