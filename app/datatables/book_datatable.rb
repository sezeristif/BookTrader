class BookDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :check_box_tag, :link_to, :mail_to, :edit_user_path

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super

  end
  
  
  def view_columns
    @view_columns ||= {
      id: { source: "Book.id" },
      title: { source: "Book.title", searchable: true },
      author:  { source: "Book.author" },
      user: { source: "User.username", searchable: true, orderable: true },
    }
  end

  def data
    records.map do |record|
      {
        id: record.id,
        title: link_to(record.title, books_path(record)), 
        author: record.author,
        user: record.user.username
      }
    end
  end

  def get_raw_records
    Book.all.joins(:user)
  end

end
