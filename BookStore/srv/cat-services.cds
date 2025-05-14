using {com.sap.BookStore as db} from '../db/schema';

service BookStoreService {
    entity Books as projection on db.Books ; 
    entity Authors as projection on db.Authors ; 

    // entity BookTitles as select from db.Authors ;              // not working (but were trying for creating a view with particular fields)
    // entity BookTitles as projection on db.Books  { title } ;         // trying the same as above

    // entity BooksAuthor as select from db.Books JOIN db.Authors    
    //                             ON db.ID = db.Authors.books_ID;

    // function getBooksFunction ;
    // action getBooksAction ; 

}