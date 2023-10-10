
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


// Cardastro com sucesso # features\CT001-Cadastro.feature


Given('o usuário está na pagina de cadastro 2', { timeout: 50 * 1000 }, async () => {
    await driver.get("http://publicazo.insprak.com/sign_up")
    await driver.manage().window().setRect({ width: 1295, height: 736 })
    

});

When('o usuário não preenche o Nome, e-mail, senha e confirmação de senha', async () => {
    
});

When('clica no botão de cadastrar 2', async () => {
    await driver.findElement(By.name("commit")).click()

});

Then('o sistema exibe uma mensagem de erro', async () => {
    await driver.findElement(By.css(".toast-message")).click()

});

