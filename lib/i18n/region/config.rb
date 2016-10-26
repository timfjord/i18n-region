module I18n
  module Region
    module Config
      def locale=(l)
        @lang = nil
        @region = nil
        super
      end

      def lang
         @lang ||= locale.to_s.split('-').fetch(0, 'en').downcase.to_sym
      end

      def region
        @region ||= (r = locale.to_s.split('-')[1]) && r.downcase.to_sym
      end
    end
  end
end
