book = Book.delete_all
book1 = Book.create( { :title => 'Book 1 - Weekly Revive', :description => 'This describes how to do the weekly revive....' } )
book2 = Book.create( { :title => 'Book 2 - System Restart', :description => 'This describes how to restart the system....' } )

BookStep.delete_all
BookStep.create( {:title => 'Book 1 Step 1', :description => 'Description of book 1 step 1', :book_id => book1.id })
BookStep.create( {:title => 'Book 1 Step 2', :description => 'Description of step 1 step 2', :book_id => book1.id })
BookStep.create( {:title => 'Book 1 Step 3', :description => 'Description of step 1 step 3', :book_id => book1.id })

BookStep.create( {:title => 'Book 2 Step 1', :description => 'Description of step 2 step 1', :book_id => book2.id })
BookStep.create( {:title => 'Book 2 Step 2', :description => 'Description of step 2 step 2', :book_id => book2.id })
BookStep.create( {:title => 'Book 2 Step 3', :description => 'Description of step 2 step 3', :book_id => book2.id })