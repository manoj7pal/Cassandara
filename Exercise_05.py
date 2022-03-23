from cassandra.cluster import Cluster
cluster = Cluster(protocol_version=3)
session = cluster.connect('killrvideo')
result = session.execute(" select * from videos_by_tag ")[0]
print(result)
# O/p: <cassandra.cluster.ResultSet object at 0x7fb4159472d0>

print(result.tag)
print(result.video_id)


for val in session.execute(" select * from videos_by_tag "):
	print(val)
	
session.execute(" INSERT INTO videos_by_tag(tag, added_date, video_id, title) VALUES('datastax', '2022-03-23', uuid(), 'Dummy Entry'); ")
#o/p: <cassandra.cluster.ResultSet object at 0x7fb414908c90>

for val in session.execute(" select * from videos_by_tag "):
	print(val)
	
session.execute("DELETE FROM videos_by_tag where tag='datastax' and added_date='2022-03-23' and video_id = 058c31b5-e0c4-4650-b0d6-cfda4e6227cc  ")	