# dicee_app


Dart and Flutter Compillation
- Code is parsed from top to bottom
- translated to other ios and android code

Categories of words
- Keyowrds:
    - Built into the programming language
    - have clear specific meanings

- Identifiers
    - Defined by developers
    - Used for identifying "things" in code

How flutter becomes active
- main() function gets executed automsticslly
- runApp() should be called inside main()
- Pass the to-be-displayed "widget tree" to runApp()

Flutter UIs are built with widgets
- Widgets are nested into each other
- ex. Center(child: Text('Hello world)));
    - widget tree


<img width="802" alt="Screenshot 2023-06-19 at 3 51 16 PM" src="https://github.com/Ihyatt/dicee_app/assets/11432315/8384babf-5d87-43df-9a94-c56d4526e6f7">

Poistional V. Named Arguements
- Make positional arguements optional by wrapping them in `[]`
```dart
void(a, [b]) {
  print(a + b)
}
```
- set default value
    - poitional
``` dart
void add(a, [b = 5]) { 
  print(a + b);
}
add(10);
add(10, 6); 
```
- named w/ default

```dart
void add({a, b = 5}) { 
  print(a + b); 
}  
 
add(b: 10);
```

- named w/ required

```dart
void add({required a, required b}) { 
  print(a + b); 
}   

```
Understanding const
- helps dart optimize runtime of application by storing in device memory
- if same widget with same text will be reused rather than a second object being created

final v. const
- putting const means it is compile time constant.
- use final when value that might be returned is not known at the point in time when the code is compiled. Only known when code is executed

    -   ex. final output = someFunc()
-  Use const when value is locked in at the time it is compiled
    - ex. const output = someFunc.redHex



https://github.com/Ihyatt/dicee_app/assets/11432315/de8fb183-7169-40b1-a95a-ddc491857f97



