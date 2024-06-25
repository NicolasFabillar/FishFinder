const express = require("express");
const router = express.Router();

const {productRender, userRender, editUserRender, logout, productInfoRender, sellersRender} = require("../controllers/auth")

router.get("/", (req,res) => {
    res.render("index")
});

router.get("/listing_form", (req,res) => {
    res.render("listingform")
});

router.get("/product_list", productRender); // render product list

router.get("/product_info", productInfoRender); // render product info

router.get("/sellers", sellersRender); // render product info

router.get("/sellerinfo", (req,res) => {
    res.render("sellerinfo")
});

router.get("/loginOLD", (req,res) => {
    res.render("loginOLD", messafe = false)
});

router.get("/indexOLD", (req,res) => {
    res.render("indexOLD")
});

router.get("/register", (req,res) => {
    res.render("register", message=false)
});

router.get("/login", (req,res) => {
    res.render("login")
});

router.get("/signup", (req,res) => {
    res.render("signup", message=false)
});


// router.get("/home", employeeRender);

router.get("/profile", userRender); 

router.get("/edit-profile", editUserRender);

router.get("/logout", logout); 

module.exports = router;
