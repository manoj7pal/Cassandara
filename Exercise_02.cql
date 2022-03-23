CREATE KEYSPACE killrvideo 
WITH replication = {'class': 'SimpleStrategy', 'replication_factor':3};

DESCRIBE KEYSPACE killrvideo;

USE killrvideo ;

CREATE TABLE VIDEOS( video_id timeuuid PRIMARY KEY, added_date timestamp, Title Text);

DESCRIBE TABLE VIDEOS;

INSERT INTO VIDEOS(video_id, added_date, title) VALUES(now(), '2014-01-29', 'Cassandra History');
INSERT INTO VIDEOS(video_id, added_date, title) VALUES(now(), '2012-04-23', 'Cassandra & SSDs'); 
INSERT INTO VIDEOS(video_id, added_date, title) VALUES(now(), '2013-03-17', 'Cassandra Intro');
INSERT INTO VIDEOS(video_id, added_date, title) VALUES(now(), '2013-10-16', 'DataStax DevCenter');
INSERT INTO VIDEOS(video_id, added_date, title) VALUES(now(), '2013-04-16', 'What is DataStax Enterprise');


SELECT * FROM VIDEOS;

COPY videos(video_id, added_date,title)
FROM '/home/ubuntu/labwork/data-files/videos.csv'
WITH HEADER=TRUE;

select count(*) from videos;

QUIT