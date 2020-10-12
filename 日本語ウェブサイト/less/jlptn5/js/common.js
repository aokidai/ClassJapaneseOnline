
   function toggle_visibility(user3) {
       var e = document.getElementById(user3);
       if(e.style.display == 'block')
          e.style.display = 'none';
       else
          e.style.display = 'block';
   }
   mydiv = document.getElementById("user3");

   function showhide(d) {
       d.style.display = (d.style.display !== "none") ? "none" : "block";
   }
