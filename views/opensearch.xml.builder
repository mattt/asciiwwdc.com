# frozen_string_literal: true

xml.instruct!
xml.OpenSearchDescription 'xmlns' => 'http://a9.com/-/spec/opensearch/1.1/',
                          'xmlns:moz' => 'http://www.mozilla.org/2006/browser/search/' do
  xml.InputEncoding 'UTF-8'
  xml.OutputEncoding 'UTF-8'
  xml.Language 'en-us'
  xml.ShortName 'ASCIIwwdc'
  xml.Description 'Search ASCIIwwdc'
  xml.Image 'https://asciiwwdc.com/favicon.ico',
            'type' => 'image/x-icon',
            'width' => '16',
            'height' => '16'
  xml.Url 'type' => 'application/opensearchdescription+xml',
          'rel' => 'self',
          'template' => 'https://asciiwwdc.com/open-search.xml'
  xml.Url 'type' => 'application/rss+xml',
          'template' => 'https://asciiwwdc.com/search.rss?q={searchTerms}'
  xml.Url 'type' => 'text/html',
          'method' => 'GET',
          'template' => 'https://asciiwwdc.com/search?q={searchTerms}'
  xml.tag! 'moz:SearchForm', 'https://asciiwwdc.com/'
end
