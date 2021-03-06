class IssuesController < ApplicationController
  def show
  	@issue = Issue.find(params[:id])
  end
  def destroy
  	i = Issue.find(params[:id])
  	i.destroy
  	redirect_to :root
  end
  def new
  	@issue = Issue.new
  end
  def create
  	Issue.create(issue_params)
  	redirect_to :root
  end
  def edit
  	@issue = Issue.find(params[:id])
  end
  def update
  	i = Issue.find(params[:id])
  	i.update_attributes(issue_params)
  	redirect_to :root
  end
  def show
   @issue = Issue.find(params[:id])
   @comments = @issue.comments
end
  private
  def issue_params
  	params.require(:issue).permit(:title, :content)
  end
 end
