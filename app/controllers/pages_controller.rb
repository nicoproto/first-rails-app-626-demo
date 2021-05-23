class PagesController < ApplicationController
  def about
  end

  def contact
		search = params[:member]
    @members = ['leonardo', 'michelangelo', 'raphael', 'donatello']

    if search.present?
      @members = @members.select { |member| member.start_with?(search.downcase) }
    end
  end

  def home
  end
end
