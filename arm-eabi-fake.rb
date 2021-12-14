class Object
  CROSS_COMPILING = RUBY_PLATFORM
  remove_const :RUBY_PLATFORM
  remove_const :RUBY_VERSION
  remove_const :RUBY_DESCRIPTION if defined?(RUBY_DESCRIPTION)
  RUBY_PLATFORM = "arm-eabi"
  RUBY_VERSION = "1.8.8"
  RUBY_DESCRIPTION = "ruby #{RUBY_VERSION} (#{Time.now.strftime("%Y-%m-%d")}) [#{RUBY_PLATFORM}]"
end
if RUBY_PLATFORM =~ /mswin|bccwin|mingw/
  class File
    remove_const :ALT_SEPARATOR
    ALT_SEPARATOR = "\\"
  end
end
