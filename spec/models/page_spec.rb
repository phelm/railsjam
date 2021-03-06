require 'spec_helper'


describe Page do
  before(:each) do
    @page = Page.new
    @date = Time.now
  end

  it "should not be valid when empty" do
    @page.should_not be_valid
  end

  ['title', 'body', 'published'].each do |field|
    it "should require #{field}" do
     @page.should_not be_valid
    end
  end
  


end