https://docs.google.com/spreadsheets/d/1myC0TbXVTo-a6C5vGYBwex6HqQu8dmejL0t9wqo323o/edit#gid=0

1. Create users table
2. Create chotheitem table
3. Create colors table
4. Create clothingitem_color join
5. Create types table
6. Create clothingitem_type join
7. Create weather table
8. Create clothingitem_weather_maps join


Users

id
name
nickname
email
password
image
weather_filter boolean


Clothes

image: string
last_worn: datetime
user: reference (one to many) - keep user id
color: reference (many to many)
category: reference (one to many)
type: reference (many to many)
weather: reference (many to many)

Colors
id
color_name
clothes: reference (many to many)


Categories
category_name
clothes: reference (one to many)


Types
type_name
clothes: reference (many to many)

Outfits
top
bottom
shoes
whole
date_worn
user: reference (one to many) - keep user id
weather

Weather
id
weather
clothes: reference
