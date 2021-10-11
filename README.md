# TLWR: The Long and Winding Road

![the_long_winding_road](https://upload.wikimedia.org/wikipedia/en/b/bf/The_long_and_winding_road.png)

## Demo Video

[![Watch the video](https://img.youtube.com/vi/Yx4N2bONA44/hqdefault.jpg)](https://youtu.be/Yx4N2bONA44)

## Problem We tried to Solve

During service experience, users sometimes encounter the long and winding road to achieve their goal.

As a service developer and provider, we need to know how the users suffer from the complex route connections and how to enhance the routing connections.

## What we provide

TLWR (The Long and Winding Road) provides a collection tool of routing behavior of users and a visualization dynamic transition of routing paths for Flutter based services.

We hope that service owners can achieve useful insight of users behavior and what has to be modified for the enhancement of the service.

Here's a link to the working site [https://tlwr.netlify.app](https://tlwr.netlify.app). Have a look around, we made the frontend as intuitive as possible to make it supa-easy for new users, and also prepared a demo account with pre-recorded routing behaviors.

## The Team

- Taejung Heo - [GitHub](https://github.com/Aqudi)
- Wonmo Jung - [GitHub](https://github.com/croquies)

## How it works

Supabase has been great hand for finishing this project in such a short period of time. Here's how we used it's features to efficiently deploy our service

1. When a user sign up, TLWR sends a confirmation email using Supabase authentication service.
2. We provides TLWR routing observer. This observer sends log of users' page routing behaviors to our API server (feat. Supabase database).
3. The page nodes and routing edges are stored in Supabase database to visualize page network.

The frontend web site visualizes the page network of a running flutter service based on how users often and long visited and routed to the other page.

## How to use TLWR observer

```dart
final _logger = TLWRLogger.initialize(id: PROJECT_ID);
final _observer = TLWRObserver.initialize(tlwrLogger: _logger);
void main() {
  runApp(MaterialApp(
    home: Container(),
    navigatorObservers: [_observer],
  ));
}
```
