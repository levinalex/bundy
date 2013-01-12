class LawsController < ApplicationController
  def show
    name = params[:path]
    basedir = "/Users/levin/projects/bundesgit/laws"


    dir = "#{name[0]}/#{name}/#{name}.xml"


    fname = File.join(basedir, dir) # FIXME: XSS?!

    xml = Nokogiri::XML(File.open(fname))
    @law = Law::Law.new(xml)


    # render text: @law.ascii_tree, :content_type => "text/plain"
  end
end
