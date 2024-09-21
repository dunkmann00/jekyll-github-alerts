require "jekyll"

module Jekyll
  module GithubAlerts
      @@octicon_mapping = {
        note: "info",
        tip: "light-bulb",
        important: "report",
        warning: "alert",
        caution: "stop"
      }

      def self.jekyllify(doc)
        doc.content = doc.content.gsub(/^> *\[!(NOTE|TIP|IMPORTANT|WARNING|CAUTION)\] *\R(.+?\R)+/i) { |match|
          "#{match}{:.markdown-alert.markdown-alert-#{$1.downcase}}"
        }

        doc.content = doc.content.gsub(/^> *\[!(NOTE|TIP|IMPORTANT|WARNING|CAUTION)\]/i) {
          "> **{% octicon #{@@octicon_mapping[$1.downcase.to_sym]} width:16 height:16 class:\"mr-2\" aria-hidden:true %}#{$1.capitalize}**{:.markdown-alert-title}\n>"
        }
      end

      def self.is_markdown?(doc)
        markdown_extname_list(doc).include?(doc.extname.delete_prefix("."))
      end

      def self.markdown_extname_list(doc)
        doc.site.config["markdown_ext"].split(",")
      end

  end
end

Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  Jekyll::GithubAlerts.jekyllify(doc) if Jekyll::GithubAlerts.is_markdown?(doc)
end
