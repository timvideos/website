# Jekyll plugin for generating a json with pages and url for pages
# 
# Author: Maciej Paruszewski <maciek.paruszewski@gmail.com>
# Source: http://github.com/pinoss
#
# Distributed under the MIT license
# Copyright Maciej Paruszewski 2014

module Jekyll
  class PagesJSON < StaticFile
    def write(dest)
      true
    end
  end

  class PagesJsonGenerator < Generator
    priority :low
    safe true

    # Generates an pages.json
    #
    # site - the site
    #
    # Returns nothing
    def generate(site)
      require 'json'

      pages = {}
      pages['pages'] = []
      pages['posts'] = []

      site.pages.each { |page| pages['pages'] << { 'basename' => page.basename, 'data' => page.data, 'url' => page.url } }
      site.posts.each { |post| pages['posts'] << { 'slug'     => post.slug,     'data' => post.data, 'url' => post.url } }

      Dir::mkdir(site.dest) if !File.directory? site.dest
      pages_path = File.join(site.dest, 'pages.json')
      File.open(pages_path, 'w') do |f|
        f.write(pages.to_json)
      end
      site.static_files << Jekyll::PagesJSON.new(site, site.source, '', 'pages.json')
    end
  end
end
