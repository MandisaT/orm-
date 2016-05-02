class User

    def self.find(id)
        `psql -d myface -c "SELECT * FROM users WHERE id = #{id}"`
    end

    def self.where(hash)
        `psql -d myface -c "SELECT * FROM #{hash[:table]}
         WHERE #{hash[:col_name]} = '#{hash[:col_value]}'"`
    end
    
    def self.all
    	`psql -d myface -c "SELECT * FROM users"`

    end 
    # def self.first
    # 	`psql -d  myface -c  "SELECT max( " `

    # end 

    def self.last
    	`psql -d myface -c "SELECT * FROM users  where id=(SELECT max(id) FROM users)"`

    end 
    def  self.first
    	`psql -d myface -c "SELECT * FROM users  where id = (SELECT min (id) FROM users)"`
    end 

   
    	# def initialize (key)
    	# 	@@users[key] = self
    	# 	puts self 
    	# end
 	   

end


