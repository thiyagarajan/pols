# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Pols::Application

#Whatever::Application.config.middleware.use ExceptionNotifier,
#                                            :email_prefix => "[Whatever] ",
#                                            :sender_address => %{"notifier" <notifier@example.com>},
#                                            :exception_recipients => %w{thiyagarajannv@gmail.com}
