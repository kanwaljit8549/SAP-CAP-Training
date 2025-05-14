const cds= require('@sap/cds');
const {SELECT,INSERT} = cds.ql;
const {Reviews} = cds.entities("com.sap.BookStore");

// discount on the book if the amount of the 
module.exports = function(){                    // exporting the module
    this.after("READ","Books", (req) =>{             // "after" - event, "READ" - operation, "Books" - Entity, function() 
        req.forEach((book)=>{
            if(book.stock >20){
                // logic is not complete here
                // book.discount - 10;
            }
        })
    });


    // just triggering this action 
    // this.on("rateBook", async(req)=>{                   // working yet
    //     console.log(req);
    //     try{                        //handling the errors                // can use the 
    //         const insertedReview  =await INSERT.into(Reviews).columns('ID','book_ID','rating').values(15,req.data.bookID,req.data.rating);
    //         return req.data;
    //     }
    //     catch(error){
    //         req.error({status:404, message:error});
    //     }
    // });

    // this.on("getPopularBook", async(req)=>{             // not working yet
    //     console.log(req);
    //     // const hisghestRatedBook = await SELECT.from(Reviews).columns(MAC(rating) as rating, comment,book_ID);      // it works but i dont have the rating entity in my service
    //     // return hisghestRatedBook;
    // });
}