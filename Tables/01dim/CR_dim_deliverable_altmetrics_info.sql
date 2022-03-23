Drop table if exists  `dim_deliverable_altmetrics_info` ;

CREATE TABLE marlobi.dim_deliverable_altmetrics_info
(
  pk_id_deliverable_altmetrics_info BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, deliverable_id BIGINT
, phase_id BIGINT
, title TEXT
, doi TEXT
, uri TEXT
, altmetric_jid TEXT
, journal TEXT
, authors TEXT
, type TEXT
, handle TEXT
, altmetric_id TEXT
, almetrics_detail_page MEDIUMTEXT
, is_oa TEXT
, cited_by_posts BIGINT
, cited_by_delicious BIGINT
, cited_by_facebook_pages BIGINT
, cited_by_blogs BIGINT
, cited_by_forum_users BIGINT
, cited_by_google_plus_users BIGINT
, cited_by_linkedin_users BIGINT
, cited_by_news_outlets BIGINT
, cited_by_peer_review_sites BIGINT
, cited_by_pinterest_users BIGINT
, cited_by_policies BIGINT
, cited_by_stack_exchange_resources BIGINT
, cited_by_reddit_users BIGINT
, cited_by_research_highlight_platforms BIGINT
, cited_by_twitter_users BIGINT
, cited_by_youtube_channels BIGINT
, cited_by_weibo_users BIGINT
, cited_by_wikipedia_pages BIGINT
, last_updated DATETIME
, score TEXT
, url TEXT
, added_on DATETIME
, published_on VARCHAR(19)
, image_small TEXT
, image_medium TEXT
, image_large TEXT
, details_url TEXT
, last_sync DATETIME
)
;CREATE INDEX idx_dim_deliverable_altmetrics_info_lookup ON marlobi.dim_deliverable_altmetrics_info(deliverable_id)
;
CREATE INDEX idx_dim_deliverable_altmetrics_info_tk ON marlobi.dim_deliverable_altmetrics_info(pk_id_deliverable_altmetrics_info)
;
