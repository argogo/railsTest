def product_params
	params.require(:product).permit(:name, :description, :image_url, :color)
end