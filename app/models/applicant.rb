class Applicant < ActiveRecord::Base
	
	def image_file1
	end
	def image_file2
	end
	def image_file3
	end
	def image_file4
	end

	def image_file1=(input_data)
		#self.filename = input_data.original_filename
		#self.content_type = input_data.content_type.chomp
		#validates_attachment_content_type :input_data, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
		self.itr = input_data.read
	end
	
	def image_file2=(input_data)
		#self.filename = input_data.original_filename
		#self.content_type = input_data.content_type.chomp
		#validates_attachment_content_type :input_data, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
		self.electricity = input_data.read
	end
	
	def image_file3=(input_data)
		#self.filename = input_data.original_filename
		#self.content_type = input_data.content_type.chomp
		#validates_attachment_content_type :input_data, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
		self.admission = input_data.read
	end
	
		def image_file4=(input_data)
		#self.filename = input_data.original_filename
		#self.content_type = input_data.content_type.chomp
		#validates_attachment_content_type :input_data, :content_type => ['image/jpeg', 'image/jpg', 'image/png']
		self.picture = input_data.read
	end
	
	def password_confirmation
		self.password
	end
	
	def password_confirmation=(input)
	end
	
	validates :sName,  
		:presence => true
	
	validates :fName,  
		:presence => true

	validates :mName,  
		:presence => true
		
	validates :sNum, 
		:presence => true,
		:uniqueness=>true,
		:length => {	:minimum => 5,	:maximum => 5	}
	
	validates_uniqueness_of :sNum, 
		:scope => :id
		
	validates :sex, 
		:presence => true,
		:length => { :maximum => 1	}
		
	validates :course,
		:presence => true,
		:length => {:maximum=>5, :minimum=>4}
		
	validates :income,
		:presence => true,
		:length => {:maximum=>9, :minimum=>1}
		
	validates :college,
		:presence=>true,
		:length => {:minimum=>2, :maximum=>5}
		
	validates :address,
		:presence=>true,
		:length=> {:maximum=>100}
		
	validates :pEmail,
		:presence => true, 
		:email => true
		
	validates :pNum,
		:presence=>true,
		:length => {:maximum=>7, :minimum=>7}
	
	validates :pAreaCode,
		:presence=>true,
		:length => {:maximum=>3, :minimum=>2}
	
	validates :pCell,
		:presence=>true,
		:length => { :minimum=>10, :maximum=>10 }
	
	validates :password,
	  :presence=>true,
	  :length => { :minimum=>6, :maximum=>10 }
	  
	 validates :itr,
	  :presence=>true

	  validates :electricity,
	  :presence=>true
	  
	  validates :admission,
	  :presence=>true
	  
	  validates :picture,
	  :presence=>true
	  
	validates_format_of :itr, :with=>/^($|.*(.jpe?g)$)/i, :message => "File must end with .jpg or .jpeg"
	
	validates_format_of :electricity, :with=>/^($|.*(.jpe?g)$)/i, :message => "File must end with .jpg or .jpeg"

	validates_format_of :admission, :with=>/^($|.*(.jpe?g)$)/i, :message => "File must end with .jpg or .jpeg"
	
	validates_format_of :picture, :with=>/^($|.*(.jpe?g)$)/i, :message => "File must end with .jpg or .jpeg"
	
	validates_confirmation_of :password, :message=>"Passwords do not match"
	  
end
#email validation, dropdown validation