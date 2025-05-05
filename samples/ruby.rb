# frozen_string_literal: true

require 'json'
require 'pry'

module MyApp
  class User
    attr_accessor :name, :email

    EMAIL_REGEX = /\A([a-z0-9]+)([._\-+]*([0-9a-z_-]+))*@([a-z0-9]+)([._-]([0-9a-z]+))*(\.[a-z]{2,12})\z/i.freeze

    def initialize(name:, email:)
      @name = name
      @email = email
      @created_at = Time.now
    end

    def to_json(*_args)
      {
        name: @name,
        email: email,
        created_at: @created_at.iso8601
      }.to_json
    end

    def valid_email?
      !!(email =~ /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/)
    end

    private

    def xxx
      puts 'xxx'
    end
  end

  class Error < StandardError; end

  class Service
    def call
      user = User.new(name: 'Alice', email: 'alice@example.com')
      puts "User: #{user.name} <#{user.email}>"

      status = user.valid_email? ? '✓ Email is valid' : '✗ Invalid email'
      puts status

      raise Error, 'Invalid email' unless user.valid_email?
    rescue Error => e
      warn "[ERROR] #{e.message}"
    ensure
      puts "Done at #{Time.now.strftime('%H:%M:%S')}"
    end
  end
end

MyApp::Service.new.call if __FILE__ == $0
