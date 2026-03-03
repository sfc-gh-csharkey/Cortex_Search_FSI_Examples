/*
Cortex Code CLI Prompt: Create a multifeild Cortex search index, using the FSI_DEMO_DB.CAPITAL_MARKETS.NEWS_ARTICLES table. Make the HEADLINE, CONTENT and SUMMARY columns vector search-able. Make the TICKER_MENTIONED column key word search-able. Make all of the other columns filter-able. Use an embeding model of your choice. Set the TARGET_LAG to 1 day. After you create this index, upload the SQL code you used in My Workspace under the Cortex Search folder as a SQL file.
*/

/*
    - Create Multi-Field Cortex Search Index for NEWS_ARTICLES
    - Vector searchable: HEADLINE, CONTENT, SUMMARY
    - Keyword searchable: TICKERS_MENTIONED
    - Filterable: All other columns
    - Embedding model: snowflake-arctic-embed-l-v2.0
    - Target lag: 1 day
*/

CREATE OR REPLACE CORTEX SEARCH SERVICE FSI_DEMO_DB.CAPITAL_MARKETS.NEWS_ARTICLES_SEARCH_INDEX
    TEXT INDEXES (TICKERS_MENTIONED) -- key word search
    VECTOR INDEXES (
        HEADLINE (model='snowflake-arctic-embed-l-v2.0'), -- vector search
        CONTENT (model='snowflake-arctic-embed-l-v2.0'), -- vector search
        SUMMARY (model='snowflake-arctic-embed-l-v2.0') -- vector search
    )
    ATTRIBUTES (
        ARTICLE_ID,
        PUBLISH_DATE,
        SOURCE,
        AUTHOR,
        URL,
        SECTORS_MENTIONED,
        ARTICLE_TYPE,
        SENTIMENT_SCORE,
        SENTIMENT_LABEL,
        RELEVANCE_SCORE,
        CREATED_AT
    )
    WAREHOUSE = FSI_DEMO_WH
    TARGET_LAG = '1 day'
AS (
    SELECT
        ARTICLE_ID,
        PUBLISH_DATE,
        SOURCE,
        AUTHOR,
        HEADLINE,
        CONTENT,
        SUMMARY,
        URL,
        TICKERS_MENTIONED,
        SECTORS_MENTIONED,
        ARTICLE_TYPE,
        SENTIMENT_SCORE,
        SENTIMENT_LABEL,
        RELEVANCE_SCORE,
        CREATED_AT
    FROM FSI_DEMO_DB.CAPITAL_MARKETS.NEWS_ARTICLES
);
