require_relative '../../data_mapper_setup'

class Link

   include DataMapper::Resource

   property :id,     Serial
   property :title,  String
   property :url,    String

end
