namespace com.sap.BookStore;
using {managed, cuid, Currency} from '@sap/cds/common';      // adding standard 

type Isbn : String(13);      // Type
type Address : {
    address : String;
    pincode : Integer;
}

// entity Books extend with managed{       // both ways work (1)
entity Books : cuid, managed{                   // (2)
    // key ID : Integer;           // if we are using the cuid then no need to use this
    title :String;
    isbn : Isbn;
    amount : Currency;
    reviews : Composition of many Reviews on reviews.book = $self;
    author : Association to Authors;
}

entity Authors :cuid {
    authorName : String;
    isbn : Isbn;
    address : Address;
    book : Association to many Books on book.isbn = isbn;
 //books : Association to Books on books.ID =  books_ID ;            // association   (UnManaged)
    // books_ID : UUID;             // if I delete this it will be taken care by SAP CAP itself

    // books : Association to many Books ;            // association (Managed)
    // books : Association to Books ;            // This will also work - association (Managed)
    // books_c : Composition of one Books ;     // i guess it will work but in order to have our view BookTitle work we need to remove these associations and compositions


}

entity Reviews : cuid {
    rating : Integer;
    comment: String;
    book : Association to Books;

}