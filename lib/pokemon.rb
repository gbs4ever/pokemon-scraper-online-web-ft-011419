class Pokemon


attr_accessor :id, :name, :type, :db, :hp
def initialize ( id:, name:, type:, db:nil, hp:60)
@id=id
@name= name
@type =type
@db =db
@hp =hp
end


def self.save(name, type,db)
db.execute("INSERT INTO Pokemon  (name, type) VALUES (?, ?)",name, type)
end


def self.find(id,db)
file = db.execute("SELECT * FROM pokemon WHERE id= ?" ,id).flatten
Pokemon.new(id:file[0], name:file[1], type:file[2])
end













end
