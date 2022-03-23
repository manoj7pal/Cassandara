
CREATE TABLE videos_by_tag (
 tag text,
 video_id uuid,
 added_date timestamp,
 title text,
 PRIMARY KEY ( (tag), added_date, video_id) 
)
WITH CLUSTERING ORDER BY (added_date desc, video_id desc)
;

COPY videos_by_tag(tag, video_id, added_date, title)
FROM '/home/ubuntu/labwork/data-files/videos-by-tag.csv'
WITH HEADER=TRUE;

select * from videos_by_tag;

select * from videos_by_tag where tag = 'cassandra';
 
select * from videos_by_tag where tag = 'cassandra' order by added_date;

select * from videos_by_tag where tag='cassandra' and added_date > '2013-01-01';

select * from videos_by_tag where tag='datastax' ORDER BY added_date asc, video_id asc;
select * from videos_by_tag where tag='cassandra' ORDER BY added_date asc, video_id asc;