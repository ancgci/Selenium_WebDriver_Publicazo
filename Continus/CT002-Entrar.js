const { Given, Then, When, Before, After } = require('@cucumber/cucumber')
const assert = require('assert');
const webdriver = require('selenium-webdriver');

//Setup Chorme Driver

var chrome = require('selenium-webdriver/chrome');
const ChromeDriver = require('chromedriver');
const { By } = require('selenium-webdriver');
var options = new chrome.Options().headless();

let driver = new webdriver.Builder()
    .forBrowser('chrome')
    .withCapabilities(webdriver.Capabilities.chrome())
    .setChromeOptions(options)
    .build();


