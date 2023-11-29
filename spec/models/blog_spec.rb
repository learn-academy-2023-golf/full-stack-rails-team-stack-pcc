require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'has a title and content' do
    blog1 = Blog.create(

    ) 
    expect(blog1.errors[:title]).to_not be_empty
    expect(blog1.errors[:content]).to_not be_empty
  end

  it 'all blog post titles are unique' do
    Blog.create(
      title: 'title for a post',
      content: 'here is my content'
    )
    blog2 = Blog.create(
      title: 'title for a post',
      content: 'here is more content'
    )
    expect(blog2.errors[:title]).to_not be_empty
  end

  it 'have a minimum of four characters' do
    blog3 = Blog.create(
      title: 'yep',
      content: 'more content'
    )
    expect(blog3.errors[:title]).to_not be_empty
  end

  it 'have a minimum of ten characters' do
    blog3 = Blog.create(
      title: 'great title',
      content: 'yep'
    )
    expect(blog3.errors[:content]).to_not be_empty
  end
end
