#!/usr/bin/ruby -w

require "Liquid"
require "kramdown"

# Read HTML template file and resume markdown
@template_data = File.open("template.html", "r").read
@resume_markdown = File.open(ARGV[0], 'r').read

@resume_html = Kramdown::Document.new(@resume_markdown).to_html

@template = Liquid::Template.parse(@template_data)
puts @template.render('content' => @resume_html)
