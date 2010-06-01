class Category < ActiveRecord::Base
    belongs_to :section
    has_many :products
    
    has_attached_file :image, :styles => { :thumb => "155x100>" },
        :url => "/uploads/:attachment/:id/:basename_:style.:extension",
        :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
    
    validates_presence_of :title
end
