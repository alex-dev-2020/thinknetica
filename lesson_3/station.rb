class Station 

# only name will getting from instance of the class
  attr_reader  :st_name

# def default st_name "main" & empty array of trains
  def initialize(st_name = 'main')
	@st_name = st_name
	@trains = []
  end

# arrival - the train added to array of trains

  def train_in(train)
	@trains << train

  end

# recall list of trains at the station (просто посмотреть список, наверное можно было запилить через attr_reader )

  def trains_list
	@trains
  end

# get the list of trains by type - just use .select method of Array (нужно будет пилить подобный метод у классса Train)

def trains_by_type(train_type)
	@trains.select{|train| train.type == train_type }
end

# departure just delete the train from array of trains (using .delete method of Array)

  def train_out(train)
	@trains.delete(train)
  end


