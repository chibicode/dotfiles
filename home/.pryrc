# === EDITOR ===
Pry.editor = 'vi'

# == Pry-Nav - Using pry as a debugger ==
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil

# === CUSTOM PROMPT ===
# This prompt shows the ruby version (useful for RVM)
Pry.prompt = [proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

# === Listing config ===
# Better colors - by default the headings for methods are too
# similar to method name colors leading to a "soup"
# These colors are optimized for use with Solarized scheme
# for your terminal
Pry.config.ls.separator = "\n" # new lines between methods
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

# == PLUGINS ===
# awesome_print gem: great syntax colorized printing
# look at ~/.aprc for more settings for awesome_print
begin
  require 'awesome_print'
  # The following line enables awesome_print for all pry output,
  # and it also enables paging
  Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}

  # If you want awesome_print without automatic pagination, use the line below
  # Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "gem install awesome_print  # <-- highly recommended"
end

# === CUSTOM COMMANDS ===
# from: https://gist.github.com/1297510
default_command_set = Pry::CommandSet.new do
  command "copy", "Copy argument to the clip-board" do |str|
    IO.popen('pbcopy', 'w') { |f| f << str.to_s }
  end

  command "clear" do
    system 'clear'
    if ENV['RAILS_ENV']
      output.puts "Rails Environment: " + ENV['RAILS_ENV']
    end
  end

  command "sql", "Send sql over AR." do |query|
    if ENV['RAILS_ENV'] || defined?(Rails)
      pp ActiveRecord::Base.connection.select_all(query)
    else
      pp "No rails env defined"
    end
  end
  command "caller_method" do |depth|
    depth = depth.to_i || 1
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ caller(depth+1).first
      file   = Regexp.last_match[1]
      line   = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      output.puts [file, line, method]
    end
  end
end

Pry.config.commands.import default_command_set


# === CONVENIENCE METHODS ===
# Stolen from https://gist.github.com/807492
# Use Array.toy or Hash.toy to get an array or hash to play with
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

# === COLOR CUSTOMIZATION ===
# Everything below this line is for customizing colors, you have to use the ugly
# color codes, but such is life.
CodeRay.scan("example", :ruby).term # just to load necessary files
# Token colors pulled from: https://github.com/rubychan/coderay/blob/master/lib/coderay/encoders/terminal.rb

$LOAD_PATH << File.dirname(File.realpath(__FILE__))

# In CodeRay >= 1.1.0 token colors are defined as pre-escaped ANSI codes
if Gem::Version.new(CodeRay::VERSION) >= Gem::Version.new('1.1.0')
  TERM_TOKEN_COLORS = {
          :attribute_name => "\e[33m",
          :attribute_value => "\e[31m",
          :binary => "\e[1;35m",
          :char => {
            :self => "\e[36m", :delimiter => "\e[34m"
          },
          :class => "\e[1;35m",
          :class_variable => "\e[36m",
          :color => "\e[32m",
          :comment => "\e[37m",
          :complex => "\e[34m",
          :constant => "\e[34m\e[4m",
          :decoration => "\e[35m",
          :definition => "\e[1;32m",
          :directive => "\e[32m\e[4m",
          :doc => "\e[46m",
          :doctype => "\e[1;30m",
          :doc_string => "\e[31m\e[4m",
          :entity => "\e[33m",
          :error => "\e[1;33m\e[41m",
          :exception => "\e[1;31m",
          :float => "\e[1;35m",
          :function => "\e[1;34m",
          :global_variable => "\e[42m",
          :hex => "\e[1;36m",
          :include => "\e[33m",
          :integer => "\e[1;34m",
          :key => "\e[35m",
          :label => "\e[1;15m",
          :local_variable => "\e[33m",
          :octal => "\e[1;35m",
          :operator_name => "\e[1;29m",
          :predefined_constant => "\e[1;36m",
          :predefined_type => "\e[1;30m",
          :predefined => "\e[4m\e[1;34m",
          :preprocessor => "\e[36m",
          :pseudo_class => "\e[34m",
          :regexp => {
            :self => "\e[31m",
            :content => "\e[31m",
            :delimiter => "\e[1;29m",
            :modifier => "\e[35m",
            :function => "\e[1;29m"
          },
          :reserved => "\e[1;31m",
          :shell => {
            :self => "\e[42m",
            :content => "\e[1;29m",
            :delimiter => "\e[37m",
          },
          :string => {
            :self => "\e[36m",
            :modifier => "\e[1;32m",
            :escape => "\e[1;36m",
            :delimiter => "\e[1;32m",
          },
          :symbol => "\e[1;31m",
          :tag => "\e[34m",
          :type => "\e[1;34m",
          :value => "\e[36m",
          :variable => "\e[34m",

          :insert => "\e[42m",
          :delete => "\e[41m",
          :change => "\e[44m",
          :head => "\e[45m"
  }
else
  TERM_TOKEN_COLORS = {
          :attribute_name => '33',
          :attribute_value => '31',
          :binary => '1;35',
          :char => {
            :self => '36', :delimiter => '34'
          },
          :class => '1;35',
          :class_variable => '36',
          :color => '32',
          :comment => '37',
          :complex => '34',
          :constant => ['34', '4'],
          :decoration => '35',
          :definition => '1;32',
          :directive => ['32', '4'],
          :doc => '46',
          :doctype => '1;30',
          :doc_string => ['31', '4'],
          :entity => '33',
          :error => ['1;33', '41'],
          :exception => '1;31',
          :float => '1;35',
          :function => '1;34',
          :global_variable => '42',
          :hex => '1;36',
          :include => '33',
          :integer => '1;34',
          :key => '35',
          :label => '1;15',
          :local_variable => '33',
          :octal => '1;35',
          :operator_name => '1;29',
          :predefined_constant => '1;36',
          :predefined_type => '1;30',
          :predefined => ['4', '1;34'],
          :preprocessor => '36',
          :pseudo_class => '34',
          :regexp => {
            :self => '31',
            :content => '31',
            :delimiter => '1;29',
            :modifier => '35',
            :function => '1;29'
          },
          :reserved => '1;31',
          :shell => {
            :self => '42',
            :content => '1;29',
            :delimiter => '37',
          },
          :string => {
            :self => '36',
            :modifier => '1;32',
            :escape => '1;36',
            :delimiter => '1;32',
          },
          :symbol => '1;31',
          :tag => '34',
          :type => '1;34',
          :value => '36',
          :variable => '34',

          :insert => '42',
          :delete => '41',
          :change => '44',
          :head => '45'
  }
end

module CodeRay
  module Encoders
    class Terminal < Encoder
      # override old colors
      TERM_TOKEN_COLORS.each_pair do |key, value|
        TOKEN_COLORS[key] = value
      end
    end
  end
end
