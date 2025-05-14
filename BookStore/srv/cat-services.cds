using {com.sap.BookStore as db} from '../db/schema';

service BookStoreService @(impl : './cat-service.js') @(path: 'BookStoreService') @(requires: ['Admin','Customer']) {
    @cds.redirection.target
    @readonly
    entity Books as projection on db.Books ; 
    @readonly
    entity Authors as projection on db.Authors ; 

    // entity BookTitles as select from db.Authors ;              // not working (but were trying for creating a view with particular fields)
    // entity BookTitles as projection on db.Books  { title } ;         // trying the same as above

    // entity BooksAuthor as select from db.Books JOIN db.Authors    
    //                             ON db.ID = db.Authors.books_ID;

    // function getBooksFunction ;
    // action getBooksAction ; 

    //Day-5 
    // entity BookReview 
    // as select from Books as b 
    // join db.Reviews as r 
    // on b.ID = r.book.ID 
    // {
    //     b.ID ,
    //     b.title 
    //     r.rating,
    //     r.comment
    // }

    // Day-6
    // action rateBook(bookID:Integer,rating:Integer) returns Books;
    // function getPopularBook() returns Books ;

}

service CustomerService @(path : 'CustomerService') @(requires : ['Admin','Customer']) {
    @readonly
    entity Books as projection on db.Books;
    @readonly
    entity Author as projection on db.Authors;
    @readonly
    entity Reviews as projection on db.Reviews;
    // @readonly
    // entity Publishers as projection on db.Publishers;
}