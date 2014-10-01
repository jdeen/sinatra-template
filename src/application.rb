require 'rubygems'
require 'bundler/setup'

# Sinatra extensions
require 'sinatra/base'
require 'sinatra/content_for'
require 'sinatra/flash'
require 'bcrypt'

# Localization
require 'gettext'
require 'i18n'
require 'i18n/backend/fallbacks'
require 'sinatra/r18n'

# Layouts
require 'slim'

# Debuggin
require 'pry'
Pry.config.input = STDIN
Pry.config.output = STDOUT

ROOT = File.expand_path('../', File.dirname(__FILE__))

require_relative 'config/database'
require_relative 'config/warden'
require_relative 'config/carrierwave'

class DLite < Sinatra::Base

  helpers Sinatra::ContentFor

  # Basic app information
  set :author_name, 'Ziyan Junaideen'
  set :author_company, 'Guru of IT'
  set :author_email, 'jdeen-solutions@outlook.com'

  set :owner_name, 'Ziyan Junaideen'
  set :owner_company, 'Guru of IT'
  set :owner_email, 'jdeen-solutions@outlook.com'
  
  set :root, File.expand_path('../', File.dirname(__FILE__))
  set :app_file, __FILE__
  set :public_folder, File.expand_path('public', File.dirname(__FILE__))
  set :views, File.expand_path('views', File.dirname(__FILE__))

  enable :static  
  
  # Sessions
  enable :sessions
  set :session_secret, 'all men must die'

  register Sinatra::Flash
  register Sinatra::R18n

  # Configuration
  configure do
    # set :server, :puma
    
    @db = ::DCustom::DatabaseSetup.new()

    # I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
    # I18n.load_path = Dir[File.join(ROOT, 'locales', '*.yaml')]
    # I18n.backend.load_translations
    
    # Location of langyage yaml files
    R18n.default_places { "#{ROOT}/i18n" }
  end

  # Before
  before '/:locale/*' do 
    @locale = params[:locale]
  end

end

require_relative 'helpers/init'
require_relative 'routes/init'
require_relative 'models/init'
