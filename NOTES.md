removed line 9 in views/applications.html.erb 
<!-- <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %> --> 


TODO:
1. [] Create static home page with:
    - [x] User Sign Up form
    - [X] Link to the About Page #static
    - [X] Link to the Contact Page #static
    - [x] Link to sign in
2. [] User 'Show Page' should show
    - [] Account settings with ability to change name email password
    - [X] Shows ammout of lists created (scope method)
    - [] Show money spent each month??(extra scope method)

3. Shopping Lists 'Index Page' should show
    - [X] full list or Shopping lists (or most recent 10 with option to view more)
    - [x] Create new list button

4. [] Get Delete Item working

5. [-] User feild validation messages


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


<%=f.collection_select(:item_id, Item.all, :id, :name, {:prompt => 'Please select an Item'})%>