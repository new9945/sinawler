/*create table*/
CREATE TABLE [queue_buffer_for_status] (
	[user_id] [bigint] NOT NULL ,
	[enqueue_time] [datetime] NOT NULL ,
	CONSTRAINT [PK_queue_buffer_for_status] PRIMARY KEY  CLUSTERED 
	(
		[user_id]
	) WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY] 
) ON [PRIMARY];

/*create index*/
CREATE NONCLUSTERED INDEX [index_enqueue_time] ON [queue_buffer_for_status] 
(
	[enqueue_time] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF) ON [PRIMARY];

ALTER INDEX PK_queue_buffer_for_status on queue_buffer_for_status REBUILD 
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, ONLINE = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = OFF);