*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

Search for Products
    go to  http://www.amazon.com
    maximize browser window
    wait until page contains  You are on amazon.com
    input text  //*[@id="twotabsearchtextbox"]  Ferrari 458
    click element  //*[@id="nav-search"]/form/div[2]/div/input
    sleep   3s
    sleep   3s
Select Products from Search Result
    click element  //*[@id="pdagDesktopSparkleHeadline"]
    wait until page contains  Add to Cart
    click button  #ProductGrid-TBWCL2R > div > div > ul > li:nth-child(1) > div > div.style__addToCart__3GFWW > div > button
    wait until page contains  Add to Cart

Add Product to Cart
#    click button  //*[@id="ProductGrid-JMMDAKJ"]/div/div/ul/li[1]/div/div[4]/div/button
    click element  //*[@id="add-to-cart-button"]
    wait until page contains  Proceed to checkout (1 item)
Begin Checkout
    click element  //*[@id="nav-cart"]/span[3]
    wait until page contains element    //*[@id="sc-buy-box-ptc-button"]/span/input
    click element  //*[@id="sc-buy-box-ptc-button"]/span/input
    wait until page contains  Sign-In
