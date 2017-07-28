class ApplicationController < ActionController::Base
  include ActionController::MimeResponds

end
    class FilmsController < ApplicationController
      def index
        @films = Film.select('"Title", "Year"').order('created_at DESC');

        ## xml ###
        my_hash = []
        j = 0
        @films.each do |i|
          j = j+1
          my_hash[j] = { :Title => i.Title, :Year => i.Year}
        end
        ###  xml ###
        respond_to do |format|
          format.html  {render template: "layouts/films.html.erb"}
          format.json { render json: {status:'SUCCESS', message:'List of Films Json', data:@films},status: :ok }
          format.xml {render xml: my_hash.to_xml(:root => 'Films') }
        end
      end
    end
