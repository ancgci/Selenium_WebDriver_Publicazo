
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


// Cardastro sem sucesso email invalido # features\CT0012-CadEmailFake.feature


Given('o usuário está na pagina de cadastro 3', { timeout: 50 * 1000 }, async () => {
    await driver.get("http://publicazo.insprak.com/sign_up")
    await driver.manage().window().setRect({ width: 1382, height: 784 })
    

});

When('o usuário preenche o Nome certo, e-mail inválido, senha e confirmação de senha', async () => {
    await driver.findElement(By.id("user_fullname")).sendKeys("Antonio")
    await driver.findElement(By.id("user_email")).sendKeys("mmm")
    await driver.findElement(By.id("user_password")).sendKeys("159357")
    await driver.findElement(By.id("user_password_confirmation")).sendKeys("159357")

});

When('clica no botão de cadastrar 3', async () => {
    await driver.findElement(By.name("commit")).click()

});

Then('o sistema exibe uma mensagem de erro e não sai da tela de cadastro', async () => {
    assert(await driver.findElement(By.css(".text-center")).getText() == "Cadastre-se")

});

