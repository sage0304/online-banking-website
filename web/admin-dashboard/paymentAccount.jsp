<%@ include file="index.jsp"%> 

<div class="mt-20 p-4 sm:ml-64">
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table
            class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400"
            >
            <thead
                class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
                >
                <tr>
                    <th scope="col" class="px-6 py-3">Payment Account Id</th>
                    <th scope="col" class="px-6 py-3">Account Number</th>
                    <th scope="col" class="px-6 py-3">Account Type</th>
                    <th scope="col" class="px-6 py-3">Current Balance</th>
                    <th scope="col" class="px-6 py-3">Reward Point</th>
                    <th scope="col" class="px-6 py-3">Date Opened</th>
                    <th scope="col" class="px-6 py-3">Date Closed</th>
                    <th scope="col" class="px-6 py-3">
                        <span class="sr-only">Edit</span>
                    </th>
                    <th scope="col" class="px-6 py-3">
                        <span class="sr-only">Delete</span>
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="paymentAccount" items="${paymentAccounts}">
                    <tr
                        class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600"
                        >
                        <th scope="row"
                            class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                            >
                            ${paymentAccount.getPaymentAccountId()}
                        </th>
                        <td class="px-6 py-4">${paymentAccount.getAccountNumber()}</td>
                        <td class="px-6 py-4">${paymentAccount.getAccountType()}</td>
                        <td class="px-6 py-4">${paymentAccount.getCurrentBalence()} VND</td>
                        <td class="px-6 py-4">${paymentAccount.getRewardPoint()}</td>
                        <td class="px-6 py-4">${paymentAccount.getDateOpened()}</td>
                        <td class="px-6 py-4">${paymentAccount.getDateClosed()}</td>
                        <td class="px-6 py-4 text-center">
                            <form action="paymentAccount" method="POST">
                                <button class="font-medium text-blue-600 hover:underline">Edit</button>
                            </form>
                        </td>
                        <td class="px-6 py-4 text-center ">
                            <form action="paymentAccount" method="POST">
                                <button class="font-medium text-red-600 hover:underline">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</div>
<div class="flex justify-end my-10 mx-3">
    <button id="createAccountBtn" class="px-4 py-2 bg-[#00bfae] rounded-2xl outline-none 
            focus:ring transform transition hover:scale-105 duration-300 ease-in-out flex text-white" 
            onclick="showCreateAccount()">
        <img src="../assets/plus.svg" src="" class="mr-2"></img>Add Payment Account</button>
</div>

<div id="create-account" class="create-account hidden fixed top-0 left-0 w-full h-full bg-blur z-[1000] px-96 py-28">
    <div class="col-span-3 my-16 py-8 px-20 rounded-xl bg-white">
        <div class="text-[#2a6ebe] flex justify-between">Add Payment Account
            <button class="focus:ring transform transition hover:scale-125 duration-300 ease-in-out" 
                    onclick="closeCreateAccount()">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>

        <div class="grid grid-cols-1 gap-2 mb-10">           
            <form action="paymentAccount" method="post" class="mt-6">
                <input type="hidden" name="action" value="add-paymentAccount"/>
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="accountNumber"
                        name="accountNumber"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="accountNumber"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Account Number</label
                    >
                </div> 
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="accountType"
                        name="accountType"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="accountType"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Account Type</label
                    >
                </div> 
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="currentBalance"
                        name="currentBalance"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="currentBalance"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Current Balance</label
                    >
                </div> 
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="rewardPoint"
                        name="rewardPoint"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="rewardPoint"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Reward Point</label
                    >
                </div> 
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="dateOpened"
                        name="dateOpened"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="dateOpened"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Date Opened</label
                    >
                </div> 
                <div class="relative mt-6">
                    <input
                        type="text"
                        id="dateClosed"
                        name="dateClosed"
                        class="block px-2.5 pb-2.5 pt-4 w-full text-sm bg-transparent rounded-lg border-2 border-black appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=""
                        required
                        />
                    <label
                        for="dateClosed"
                        class="absolute text-sm bg-white text-gray-500 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4 left-1"
                        >Date Closed</label
                    >
                </div> 
                <div class="flex justify-end items-center">
                    <button class="mt-4 px-16 py-3 rounded-md bg-gradient-to-r from-[#00bfae] to-[#0066ad] text-white" 
                            onclick="showCreateCustomAccount()">Add Payment Account</button>
                </div> 
            </form> 
        </div>
    </div>
</div>

</body>
</html>