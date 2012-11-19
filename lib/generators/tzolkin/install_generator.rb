module Tzolkin
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy the locales files to use with the Rails application'
      source_root File.expand_path("../../../templates", __FILE__)
      def copy_locales
        ['en', 'es'].map { |locale| copy_file "../../config/locales/tzolkin.#{locale}.yml",
                          "config/locales/tzolkin.#{locale}.yml" }
      end
    end
  end
end
