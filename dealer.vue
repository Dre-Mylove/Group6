<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
     <div class="container-fluid">
       <a class="navbar-brand" href="#">LazyCar</a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav">
           <li class="nav-item">
             <a class="nav-link active" aria-current="page" href="#">Thing1</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="#">Things2</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="#">Thing3</a>
           </li>
           <li class="nav-item">
             <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Thing4</a>
           </li>
         </ul>
       </div>
     </div>
   </nav>
   
   <div class="dealer image">
     <dealerimage>
     <img src="data:image/jpeg;base64,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" />
   
     </dealerimage>
   </div>
   
   <div class = dealerinfo>
     <dealername>
     <h1>Jeep - Reno</h1>
     </dealername>
    
     <dealerinfo>
     5660 Main Street, Reno, NV 89000
     <br>
     Phone: (775)-123-4567
     <br>
     Email:
     <br>
     Website: 
   </dealerinfo>
   <inventorylink class="info-link">
             <a class="info-link active" aria-current="page" href="#">View Inventory</a>
   </inventorylink>
   
   <div class="user-review-title">
    <h4>User Reviews</h4>
   </div>
   
   </div>
   <div class="user-reviews">
   <h6> 
     <i>User &emsp; mm/dd/yy </i> 
   </h6>
   [Additional Comments Text]
   
   </div>
   
   </template> 
   
   <script>
   
   </script>
   
   
   <style>
   dealerimage
   {
     position: absolute;
     top: 40px;
     left: 40px;
   }
   h1
   {
   font-weight:bold;
   font-size:medium;
   text-decoration: underline;
   }
   dealername
   {
     position: relative; 
     left: 500px;
     top: 40px;
   }
   dealerinfo
   {
     position: relative; 
     left: 500px;
     top: 50px;
     
   
   }
   inventorylink
   {
     left: 500px;
     top: 120px;
     font-size:medium;
     text-decoration: underline;
   }
   rating
   {
   left:700px;
   top: 40px;
   color: gold;
   }
   img
   {
     width: 150%;
     height: auto;
     object-fit: contain;
   
   }
   
   .user-reviews{
   
     top: 300px;
     left: 40px;
     border: 1px solid darkgray;
     background-attachment: fixed;
     background-color: lightgray;
   }
   .user-review-title{
     position: absoulte;
     top:300px;
     left: 40px;
   }
   </style>
   