# Gamedev A/B Test
## Description
The game contains a special event - an event for which users spend money. A group of designers decided to change the window for buying event products. To evaluate the result of the innovation, an AB test was chosen, dividing users into two groups: control and test (with a new type of window).

## Task
To research which of the AB group showed itself better.

## Data
1. AbGroup – AB group name: Control/Test
2. user_id - user id
3. time_stamp - the day of the event
4. install_date - the day the user installed the application
5. event_name - technical name of the event (InAppPurchase - in case of a purchase for money, ResourceSpend in case of a purchase for game currency)
6. platform - google/itunes platform
7. network_name - the user installed the game from ads (Paid) or not (Organic)
8. country_name - user's country
9. InGameTime - how many seconds the user spent in the game
10. LastCompletedLevel - the number of the last completed level
11. avg_energy_amount - how much energy the user had per day on average
12. profit_on_event - revenue from the purchase of event products
13. Income_from_other_activity - revenue from other products, including gold
14. gold_on_event - gold spent on event progress
15. gold_on_other_activities - gold spent on other products

## Solution
[Gamedev_ab](gamedev_abtest.ipynb)

