# TLWR: The Long and Winding Road
![the_long_winding_road](https://upload.wikimedia.org/wikipedia/en/b/bf/The_long_and_winding_road.png)


TLWR (The Long and Winding Road) provides a visualization of static structure of pages and dynamic transition paths of users between the pages for Flutter based services.

We hope that service owners can achieve useful insight of users behavior and what has to be modified for the enhancement of the service.

Here's a link to the working site. Have a look around, we made the frontend as intuitive as possible to make it supa-easy for new users.

And here's a link to the server repo.

## The Team
- Taejung Heo - [GitHub](https://github.com/Aqudi)
- Wonmo Jung - [GitHub](https://github.com/croquies)


## Demo
Here's quick demo of TLWR : (not yet)

## How it works
Supabase has been integral to finishing this project in such a short period of time. Here's how we used it's features to efficiently deploy our service:

When a user first signs in, TLWR sends a magic link using Supabase authentication service.
Our static analysis provides the list of pages of flutter services (picked by users using annotation)
The page nodes are stored in Supabase database to visualize page network.

We also provides TLWR routing observer. This observer sends log of users' page routing behaviors to our API server (feat. Supabase database).

The frontend web site visualizes the page network of a running flutter service based on how users often and long visited and routed to the other page.
