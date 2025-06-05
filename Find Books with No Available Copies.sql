select l.book_id,l.title,l.author,l.genre,l.publication_year, (select count(*) from borrowing_records where return_date is null and book_id=l.book_id) as current_borrowers from 
    library_books l where l.total_copies-(select count(*) from borrowing_records where return_date is null and book_id=l.book_id)=0
    order by current_borrowers desc,2;