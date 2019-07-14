class MediaContentsController < ApplicationController
	def create
		@media = Medium.new(file_name: params[:file])
		if @media.save!
			respond_to do |format|
				format.html{ redirect_to root_path, notice: "file uploaded successfully :)" }
			end
		end
	end
end
