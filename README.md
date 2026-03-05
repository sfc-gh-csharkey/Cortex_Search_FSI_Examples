# Cortex Search Examples using synthetic Financial Services data
<img width="85" alt="map-user" src="https://img.shields.io/badge/views-000-green"> <img width="125" alt="map-user" src="https://img.shields.io/badge/unique visits-000-green">

Cortex Search is a service that provides search capabilities (key word, vector, hybrid) on your data. The service is fully automated. You create a search service on a table, select the fields required for search, the embedding model to use, target lag and the data become searchable via. a Cortex Search service.

## How to deploy / use the code sample(s)

This repository assumes you have deployed the sample [Sample Financial Services Data](https://github.com/sfc-gh-csharkey/Sample_Data_Financial_Services) or at least the portions of it that are applicable to the search service you are trying to deploy.

Each example has a folder. Each folder has a ```.sql``` file and ```.ipynb``` notebook.

For example the [News_Search](https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/tree/main/NEWS_SEARCH) folder has [Create NEWS_ARTICLES_SEARCH_INDEX.sql](https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/blob/main/NEWS_SEARCH/Create%20NEWS_ARTICLES_SEARCH_INDEX.sql) that will create a search service on the ```NEWS_ARTICLES_SEARCH_INDEX``` table. 

The [Search NEWS_ARTICLES_SEARCH_INDEX.ipynb](https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/blob/main/NEWS_SEARCH/Search%20NEWS_ARTICLES_SEARCH_INDEX.ipynb) in the [NEWS_SEARCH](https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/tree/main/NEWS_SEARCH) folder demonstrates different ways to search previously created search service.

The search service can also be tested via. the Snowsight UI playground. 

To access the playground select the AI/ML services from the side bar, then search and finally click on the playground button.

<img width="900" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/blob/main/READ_ME/Play_Ground_1.png">

In the playground user interface select the search service, configure it using the right hand menu and search.

<img width="900" alt="quick_setup" src="https://github.com/sfc-gh-csharkey/Cortex_Search_FSI_Examples/blob/main/READ_ME/Play_Ground_2.png">

## Future Improvements
1. Add an example adding a named scoring profile on a search service and using it via. Python, API etc.
