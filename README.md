# SearchBarNavigationBarBUG
a sample project to reproduce a bug when using SearchBar  as  Navigation title view

Effect :
The bug cause the search page to completly disappear and the page will no more respond to page life cycle delegate (willAppear, WillDisappear...etc) and the tab index will no longer show the page.

Steps : 
Make sur the navigation pattern is based on TabBar
1- create a UISearchController, and add it to navigationBar title view.
2- select tab index where the search page live
3- click on search bar
4- change tab index to another page
5- go back to search page
6- the page is not available

Work around :
To fix this issue, we can :
1- override tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) , get the affected page from selected index, access searchBar, and set its Active value to false :
```javascript
    for viewController in self.viewControllers! {
            let selected = viewController as? UINavigationController
           
            if selected != nil {
                
                if selected?.viewControllers.first is searchViewController {
                    let searchController  = selected?.viewControllers.first as? searchViewController
                    
                    if searchController != nil && searchController?.searchController != nil{
                        searchController?.searchController.active = false
                    }
                }
            }
        }
```
 

2- simply use the search bar under the navigation bar
3- hide navigation bar for the searchPage, and put the search bar at the same position as the navgation bar
