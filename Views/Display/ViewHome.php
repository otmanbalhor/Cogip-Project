<body class=" ">
    <header class="bg-gray-700 text-white p-4  flex justify-between items-center">
        <p class="text-6xl font-extrabold ml-20 ">MANAGE YOUR CUSTOMERS AND INVOICES EASLY</p>
        <img class="rounded-full w-1/2 h-1/2 m-20" src="Assets/img/logo3.jpg" alt="">
    </header>
<span class="relative inline-block m-4">
  <span class="absolute inset-y-10 right-0 w-1/2 h-1/2 bg-blue-500"></span>
  <span class="relative z-10 text-6xl font-extrabold leading-14 tracking-wide text-left m-8">Last Invoices</span>
</span>
<table class="min-w-full bg-white border border-gray-300 ml-8 mr-8">
        <thead>
            <tr class="bg-gray-700 text-white  m-4">
                <th class="py-2 px-4 border-b">Invoices number</th>
                <th class="py-2 px-4 border-b">Dates date_sunrise</th>
                <th class="py-2 px-4 border-b">Compagny</th>
                <th class="py-2 px-4 border-b">Created at</th>
            </tr>
        </thead>

<?php

foreach ($home->lastInvoices as $lastInvoice){
    echo '<p>' . $lastInvoice->getRef() . '</p>';
}

?>
</table>
<span class="relative inline-block m-4">
  <span class="absolute inset-y-10 right-0 w-1/2 h-1/2 bg-blue-500"></span>
  <span class="relative z-10 text-6xl font-extrabold leading-14 tracking-wide text-left m-8">Last Contacts</span>
</span>
<table class="min-w-full bg-white border border-gray-300 ml-8 mr-8">
        <thead>
            <tr class="bg-gray-700 text-white  m-4">
                <th class="py-2 px-4 border-b">Name</th>
                <th class="py-2 px-4 border-b">Phone</th>
                <th class="py-2 px-4 border-b">Mail</th>
                <th class="py-2 px-4 border-b">Compagny</th>
                <th class="py-2 px-4 border-b">Created at</th>
            </tr>
        </thead>
</table>
<span class="relative inline-block m-4">
  <span class="absolute inset-y-10 right-0 w-1/2 h-1/2 bg-blue-500"></span>
  <span class="relative z-10 text-6xl font-extrabold leading-14 tracking-wide text-left m-8">Last Companies</span>
</span>
<table class="min-w-full bg-white border border-gray-300 ml-8 mr-8">
        <thead>
            <tr class="bg-gray-700 text-white  m-4">
                <th class="py-2 px-4 border-b">Name</th>
                <th class="py-2 px-4 border-b">TVA</th>
                <th class="py-2 px-4 border-b">Country</th>
                <th class="py-2 px-4 border-b">Type</th>
                <th class="py-2 px-4 border-b">Created at</th>
            </tr>
        </thead>
</table>
<span class="bg-blue-200 text-gray-800 p-4  flex justify-between items-center">
<p class="text-6xl font-extrabold ml-20 ">WORK BETTER IN YOUR COMPAGNY</p>
<img class="rounded-full w-1/2 h-1/2 m-20" src="Assets/img/logo.jpg" alt="">   
</span>