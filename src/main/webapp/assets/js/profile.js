
          document.getElementById("edit_id").addEventListener("click",e=>{
        e.preventDefault();
            console.log("clicked")
            
            document.getElementById("username").removeAttribute("disabled");
            document.getElementById("email").removeAttribute("disabled");
            document.getElementById("phone").removeAttribute("disabled");
              document.getElementById("role").removeAttribute("disabled");
            
        })