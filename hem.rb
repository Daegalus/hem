class Hem
  def self.commandline(command)
    /(?<clazz>[\S]+)\.(?<function>[\S]+)[:(?<arguments>[\S]+)]?/ =~ command

    require "./#{clazz}.hem.rb"

    @@hemmings[:"#{function}"].call()
  end
end


Hem.commandline(ARGV[0])
