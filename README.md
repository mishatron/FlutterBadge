# flutter_badge

Badge for showing with icon

## How to use

This widget can be used anywhere, but example will be with bottom navigation.

Different cases of usage:

```
BadgedIcon(
          icon: Icon(Icons.message),
          borderRadius: 20.0,
          itemCount: 3,
        )
```

```
BadgedIcon(
          icon: Image.asset("assets/ic_message.png"),
          hideZeroCount: false,
          badgeColor: Colors.greenAccent,
          itemCount: 15,
        )
```

```
BadgedIcon(
          icon: Icon(Icons.home),
          badgeColor: Colors.greenAccent,
          badgeTextColor: Colors.red,
          position: BadgePosition.bottomLeft(),
          itemCount: 231,
        )
```
