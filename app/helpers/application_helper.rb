module ApplicationHelper
  def nested_tree(hash, &blk)
    return if hash.empty?

    haml_tag("ul") do
      hash.to_a.each do |k,subtree|
        haml_tag("li") do
          yield k
          nested_tree(subtree, &blk)
        end
      end
    end
  end

end
