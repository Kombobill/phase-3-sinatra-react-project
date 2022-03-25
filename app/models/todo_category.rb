class TodoCategory < ActiveRecord::Base
    has_many :todos
end