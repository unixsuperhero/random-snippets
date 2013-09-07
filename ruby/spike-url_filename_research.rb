require 'net/http'
require 'uri'
require 'yaml'


{
  methods: YAML.methods,
  yaml_parser_instance_methods: YAML::Parser.instance_methods,
  argv: ARGV,
  constants: YAML.constants,
  root_methods: methods,
  uri_constants: URI.constants,
  uri_methods: URI.methods - Object.methods,
  uri_instance_methods: URI.instance_methods,
  uri_escape_constants: URI::Escape.constants,
  uri_escape_methods: URI::Escape.methods - Object.methods,
  uri_escape_instance_methods: URI::Escape.instance_methods,
}.map{|k,v|
  puts
  puts '---------------------------------------'
  puts k.to_s
  puts '---------------------------------------'
  puts
  puts v.to_yaml
  puts
}

puts ['','',''].to_yaml

extend URI::Escape
puts decode('http://176.227.210.98/Servant%20x%20Service%20Episode%2010.mp4?st=pSbuMoOcNyNY9NnPXog6pQ&e=1378618960').to_yaml


