
--Execute the following query to view the partitioner token value for each video id.\
select token(video_id), video_id from videos;

CREATE TABLE videos_by_tag(tag text, video_id timeuuid, added_date timestamp, title text, PRIMARY KEY(tag, video_id) );

COPY videos_by_tag(tag, video_id, added_date, title)
FROM '/home/ubuntu/labwork/data-files/videos-by-tag.csv'
WITH HEADER=true;

select * from videos_by_tag where tag = 'cassandra';

