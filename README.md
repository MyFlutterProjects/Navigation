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
      - on the component **Navigator.pushNamed(context, routeNameAsAstring);**

   - How apply navigation in a drawer
   Here I learnt how to call a class which requires a function as one of its parameters: 
    ``` 
            drawer: MenuDrawerWidget(onTap: (ctx, i) {
                setState(() {
                    _currentIndex = i;
                    Navigator.pop(ctx);
                });
                },),
    ```     
    the method is **onTap**  and we change the index passed on what is passed, this is used to enable moving widgets on and off the body of the scaffold.

    - also learnt how to avoid having two appbars on the screen using ***_currentIndex == 3  ? HomeScreen() :  Scaffold(** whithout this condition when a user click on the home, the homescreen which itself has its own appbar would have been renders in the body of the drawer widget class which also has an appbar.

    - Have also leant how to toggle widgets, handling this  using lists.

    ### Images 
     ![Routing demo]
    (images/images/routing.png)

    ![Drawer mage of navigation app demo]
    (images/images/drawer.png)

     ![bottom navigatio]
    (images/bottom_navigation.png)





      



  


# Navigation
