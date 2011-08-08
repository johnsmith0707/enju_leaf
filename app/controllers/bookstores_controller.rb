class BookstoresController < InheritedResources::Base
  respond_to :html, :xml
  before_filter :check_client_ip_address
  load_and_authorize_resource

  def update
    @bookstore = Bookstore.find(params[:id])
    if params[:position]
      @bookstore.insert_at(params[:position])
      redirect_to bookstores_url
      return
    end
    update!
  end

  def index
    @bookstores = Bookstore.page(params[:page])
  end
end
