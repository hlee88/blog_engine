atom_feed do |feed|

  feed.title(root_url)
  feed.updated(@posts.first.updated_at || Time.now)

  for post in @posts
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(render(:action => post.file), :xhtml => true)
      # entry.author do |author|
      #   entry.name('Site Owner')
      # end
    end
  end

end
