require 'i18n'
require 'i18n/region/version'
require 'i18n/region/config'

I18n.instance_eval do
  def lang
    config.lang
  end

  def region
    config.region
  end
end

I18n::Config.prepend I18n::Region::Config
