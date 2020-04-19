# navigation
This project is about navigation in flutter
#### It covers:
 - bottom navigation
 - drawer navigation
 - using named route
 - and using materialPageRoute

 #### future work
 - Navigating from grid 
 - Top navigationI have learnt 


 ## Lessons (what ) 
- How to use **Navigator class**
  
  - Have not exhaustively expored the class but have been able to use two of its methods:
    - a.  MaterialPageRoute 
    ```  
           Navigator.push(context, MaterialPageRoute(builder: (context){
                     return className();
          }));
    ```
    it is good for simple apps, to move from one screen to another then back, to navigate back u use **Navigator.pop(context)**

    - b. pushNamed route
    ```
            initialRoute: '/', // required
            routes: { // routes
                '/': (context) => HomeScreen(),
                'screenOne':(context)=> ScreenOne(),
                'bottomNavigation': (context) => AddBottomNavigation(),
                'drawer':(context) => DrawerExample(),
                'profile': (context) => ProfileScreen(),
                'final': (context) => ScreenTwo(),

            },

      ```
      on the component ** Navigator.pushNamed(context, routeNameAsAstring);**



  

# Navigation
# Navigation
