# frozen_string_literal: true

# Basado en https://gist.github.com/YorickPeterse/9412531

namespace :sintaxis do
  desc "Revisar sintaxis de archivos ERB"
  task :erb do
    require "action_view"

    Dir["app/views/**/*.erb"].each do |file|
      template = File.read(file)

      begin
        ActionView::Template::Handlers::Erubis
          .new(template, filename: file)
          .result

        print(".")

      # ERB syntax errors.
      rescue SyntaxError => error
        puts "F"
        puts error.message
        exit(1)

      # Calls to undefined methods, etc. We only care about the syntax.
      rescue Exception
        print(".")
      end
    end

    puts
    puts "ERB OK!"
  end
end
