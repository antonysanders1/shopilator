removed line 9 in views/applications.html.erb 
<!-- <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %> --> 


TODO:
1. Create static home page with:
    - User Sign Up form
    - Link to the About Page #static
    - Link to the Contact Page #static
2. User 'Show Page' should show
    - Welcome message
    - 

3. Shopping Lists 'Index Page' should show
    - full list or Shopping lists (or most recent 10 with option to view more)
    - Create new list button

4. 


[removed from applications css]
 *= require_tree .
 *= require_self


 [removed from shopping list show]

<%=form_for @item, url: shopping_list_items_path do |f|%>
    <%=f.hidden_field "shopping_list_id", value: ShoppingList.id  %>
    <%=f.hidden_field "user_id", value: current_user.id  %>
    <%=f.text_field :name, placeholder: "Item name"%>
    <%=f.text_field :price, placeholder: "Item price"%>
    <%=f.submit "Add Item"%>
<% end %>