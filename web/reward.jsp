<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="/includes/header.jsp" %>
<%@ include file="/includes/checkLogin.jsp" %>

<div class="bg-[#f0f1f1] mt-[5.2rem] pb-16">
    <div class="py-16 mx-56">
        <div class="flex text-2xl">
            <a href="./index.jsp"><i class="fa-solid fa-chevron-left text-xl py-[0.3rem] pr-6"></i></a>
            <div class="py-[0.2rem]">Rewards</div>
        </div>

        <nav class="flex pt-3 ml-[2.3rem]" aria-label="Breadcrumb">
            <ol class="inline-flex items-center space-x-1 md:space-x-3">
                <li class="inline-flex items-center">
                    <%@ include file="/includes/homeButton.jsp" %>
                </li>
                <li>
                    <div class="flex items-center">
                        <svg class="w-3 h-3 mx-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                        </svg>
                        <form class="cursor-pointer">
                            <button
                                type="text"
                                class="ml-1 text-sm font-medium text-blue-600 md:ml-2 mb-1 pointer-events-none"
                                >
                                Rewards
                            </button>
                        </form>
                    </div>
                </li>
            </ol>
        </nav>

        <div class="">
            <div class="grid justify-center my-16 py-8 px-20 rounded-xl bg-white">

            </div>

            <div class="grid mt-16 rounded-xl bg-white">
                <div class="px-10 py-6">Gift Categories</div>
                <div class=" p-10 bg-gray-200 grid grid-cols-4 gap-5">
                    <a href="./shopping.jsp" class="grid justify-center items-center bg-white h-32 rounded-xl
                         focus:ring transform transition hover:scale-105 duration-300 ease-in-out">
                        <span class="flex flex-col items-center justify-center">
                            <img src="assets/shoploy.png" alt="Shopping" class="w-8 h-8">
                                Shopping
                        </span>
                    </a>
                    <a href="./culinary.jsp" class="grid justify-center items-center bg-white h-32 rounded-xl
                         focus:ring transform transition hover:scale-105 duration-300 ease-in-out">
                        <span class="flex flex-col items-center justify-center">
                            <img src="assets/foodloy.png" alt="Culinary" class="w-8 h-8">
                                Culinary
                        </span>
                    </a>
                    <div class="grid justify-center items-center bg-white h-32 rounded-xl
                         focus:ring transform transition hover:scale-105 duration-300 ease-in-out">
                        <span class="flex flex-col items-center justify-center">
                            <img src="assets/topuploy.png" alt="Top up" class="w-8 h-8">
                                Top up
                        </span>
                    </div>
                </div>
            </div>

            <div class="grid mt-16 rounded-xl bg-white">
                <div class="px-10 py-6">Gift Suggestions</div>
                <div class=" p-10 bg-gray-200 grid grid-cols-4 gap-5">

                </div>
            </div>
        </div>
    </div>

    <%@ include file="/includes/footer.jsp" %>
