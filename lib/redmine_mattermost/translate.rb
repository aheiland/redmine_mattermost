class String
	def redmine_to_mattermost
		gsub(/^\*(\S*?)\*$/, '**\1**').gsub(/^-(\S*?)-$/, '~~\1~~').gsub(/<pre><code class=\"html\">(.*?)<\/code><\/pre>/m, '```\1```').gsub(/^h1.\s(.*?)$/, '# \1').gsub(/^h2.\s(.*?)$/, '## \1').gsub(/^h3.\s(.*?)$/, '### \1')
	end
end
