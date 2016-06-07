module ItemsHelper
  def item_params
    params.require(:item).permit(:title, :category, :cost, :seller, :note, :user_id)
  end
end
