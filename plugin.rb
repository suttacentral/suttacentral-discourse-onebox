# name: suttacentral-discourse-onebox
# about: For generating pretty oneboxes for suttacentral.net
# version: 0.1
# authors: Nandiya Bhikkhu

Onebox = Onebox

module Onebox
  module Engine
    class SuttacentralOnebox
      include Engine
      REGEX = /^https?:\/\/suttacentral\.net\/([\w-]+)/
      matches_regexp REGEX

      def uid
        @url.match(REGEX)[1]
      end

      def to_html
        "<a href='#{url}'>#{url}</a><iframe style='width: 100%; height: 12em' frameborder='0' src='http://suttacentral.net/#{url}?embed=1'></iframe>"
      end
    end
  end
end
