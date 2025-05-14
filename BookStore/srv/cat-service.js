// const { } = requires()

// discount on the book if the amount of the 
module.exports = function(){                    // exporting the module
    this.after("READ","Books", (req) =>{             // "after" - event, "READ" - operation, "Books" - Entity, function() 
        req.forEach((book)=>{
            if(book.stock >20){
                // logic is not complete here
            }
        })
    });


    // just triggering this action 
    this.on("rateBook", (req)=>{                   // not working yet
        console.log(req);
    });

    this.on("getPopularBook", (req)=>{             // not working yet
        console.log(req);
    });
}