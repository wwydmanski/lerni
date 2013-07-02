<%include file="top.mak"/>
			<div id="main_page">
			<div id="left"> 
				<div id="nav">
					<ul>
						% for row in menu_left_list:
							<li><a href="${row[0]}" id="homenav">${row[1]}</a></li>
						% endfor
	    			</ul>
			 </div>
			</div>
				<div id="center" style="width:820px;">
					<div class="settings_container" style="width:800px;">
						<div class="settings_header">${title}</div>



                <div id="contacts">
                                <th colspan="2">
                                    <input type="text" class="search" placeholder="Przeszukaj listę">
                                </th>
                    <table>
                        <thead>
                            <tr>
                                <th class="sort  " data-sort="name">Tytuł artykułu</th>
                                <th class="sort  " data-sort="category">Autor</th>
                                <th class="sort  " data-sort="type">Zaakceptowano</th>
                                <th class="sort desc " data-sort="year">Rok szkolny</th>
                            </tr>
                        </thead>
                        <tbody class="list">
                        % for row in competitors:
                            <tr>
                                <td class="id" style="display:none;">${row[0]}</td>
                                <td class="name">${row[1]}</td>
                                <td class="category">${row[2]}</td>
                                <td class="type">${row[4]}</td>
                                <td class="year">${row[5]}</td>
                            </tr>
                        % endfor
                        </tbody>
                    </table>
                </div>     
					</div>
				</div>
			</div>

<script type="text/javascript">

    /*
    * CONTACT LIST
    */

    // Define value names
    var options = {
	    valueNames: [ 'id', 'name', 'category', 'type', 'year' ]
    };

    // Init list
    var contactList = new List('contacts', options);

    var idField = $('#id-field'),
        nameField = $('#name-field'),
        ageField = $('#age-field'),
        cityField = $('#city-field'),
        addBtn = $('#add-btn'),
        editBtn = $('#edit-btn').hide(),
        removeBtns = $('.remove-item-btn'),
        editBtns = $('.edit-item-btn');

    // Sets callbacks to the buttons in the list
    refreshCallbacks();

    addBtn.click(function() {
       contactList.add({
           id: Math.floor(Math.random()*110000),
           name: nameField.val(),
           age: ageField.val(),
           city: cityField.val()
       });
       clearFields();
       refreshCallbacks();
    });

    editBtn.click(function() {
       var item = contactList.get('id', idField.val());
       item.values({
           id:idField.val(),
           name: nameField.val(),
           age: ageField.val(),
           city: cityField.val()
       });
       clearFields();
       editBtn.hide();
       addBtn.show();
    });

    function refreshCallbacks() {
        // Needed to add new buttons to jQuery-extended object
        removeBtns = $(removeBtns.selector);
        editBtns = $(editBtns.selector);

        removeBtns.click(function() {
           var itemId = $(this).closest('tr').find('.id').text();
           contactList.remove('id', itemId);
        });

        editBtns.click(function() {
           var itemId = $(this).closest('tr').find('.id').text();
           var itemValues = contactList.get('id', itemId).values();
           idField.val(itemValues.id);
           nameField.val(itemValues.name);
           ageField.val(itemValues.age);
           cityField.val(itemValues.city);

           editBtn.show();
           addBtn.hide();
        });
    }
</script>

<%include file="bottom.mak"/>