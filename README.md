# [ActAsList](https://github.com/swanandp/acts_as_list) vs. [Ranked-Model](https://github.com/mixonic/ranked-model)

This is sample API to compare the two gems with rails.
Both offer an ordering support, but since **Ranked-Model** isn't supported regularly anymore, **ActAsList** seems like a good alternative. 

## Content
You'll find some _Dogs_, _Owners_, _Breeds_ and _Competitions_ in your data base if you run your seeds.

```bash
>> git clone https://github.com/AntonPot/ActAsList_vs_Ranked-Model.git
>> cd ActAsList_vs_Ranked-Model/
>> brew services start postgresql
>> rake db:create db:migrate db:seed
>> rails s
```

### ActAsList tryout
Since I'm mostly interested in **ActAsList**, I've created controllers which directly checks all it's methods.
In this case, dogs belonging to particular breed are ranked via `position` column.

* To get a list which can be manipulated use
```curl
curl --request GET --url 'http://localhost:3000/breeds/1'
```

#### 1. ChangePositionAndReorderListController
Controller routes directly to [this](https://github.com/swanandp/acts_as_list#methods-that-change-position-and-reorder-list) methods via the following endpoints:

* `insert_at(int)`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/insert_at/2'
```
* `move_lower`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/move_lower'
```
* `move_higher`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/move_higher'
```
* `move_to_bottom`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/move_to_bottom'
```
* `move_to_top`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/move_to_top'
```
* `remove_from_list`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/remove_from_list'
```

#### 2. ChangePositionWithoutReorderingController
Gem docs about these [methods](https://github.com/swanandp/acts_as_list#methods-that-change-position-without-reordering-list)

* `increment_position`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/increment_position'
```
* `decrement_position`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/decrement_position'
```
* `set_list_position(int)`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/1/set_list_position/2'
```

#### 3. ItemsPositionController
All [methods](https://github.com/swanandp/acts_as_list#methods-that-return-attributes-of-the-items-list-position) are execuded in single call

* `list_item.first?`
* `list_item.last?`
* `list_item.in_list?`
* `list_item.not_in_list?`
* `list_item.default_position?`
* `list_item.higher_item`
* `list_item.higher_items`
* `list_item.lower_item`
* `list_item.lower_items`
```curl
curl --request GET --url 'http://localhost:3000/breeds/1/dogs/2/info'
```

### Ranked-Model tryout
To try an alternative I've created some `Competition`s for our dogs, so they can be ranked. Here dogs are ranked with `place` column.

#### CompetitionController

* To check results from a competition check
```curl
curl --request GET --url 'http://localhost:3000/competitions/1'
```
* To set a place for a particular dog use
```curl
curl --request GET --url 'http://localhost:3000/competitions/1/dogs/29/place/1'
```
* To move it up
```curl
curl --request GET --url 'http://localhost:3000/competitions/1/dogs/29/up
```
* or down
```curl
curl --request GET --url 'http://localhost:3000/competitions/1/dogs/29/place/1'
```

## Conclusion
In my opinion **ActAsList** is just as good if not better than **Ranked-Model**. Considering the latter isn't supported anymore, I believe the former is an obvious choice.


## Additional information
If you're using [Postman](https://www.getpostman.com/), you import the whole collection https://www.getpostman.com/collections/5b2c1fcd04425c3c476c and environment variables (dogs-breeds-owners.postman_environment.json).
