const percySnapshot = require('@percy/playwright')

async function TakePercySnapshot(name, page) {
  // await page.evaluate(_ => {}, `browserstack_executor: ${JSON.stringify({action: 'setSessionName',arguments: {name: name}})}`);
  await percySnapshot(page, name);
}

async function setSessionName(name, page) {
  await page.evaluate(_ => {}, `browserstack_executor: ${JSON.stringify({action: 'setSessionName',arguments: {name: name}})}`);
}

async function setSessionStatus(status, page) {
  await page.evaluate(_ => {}, `browserstack_executor: ${JSON.stringify({action: 'setSessionStatus',arguments: {status: status,reason: 'Title matched'}})}`);
}

exports.__esModule = true;
exports.setSessionName = setSessionName;
exports.setSessionStatus = setSessionStatus;
exports.TakePercySnapshot = TakePercySnapshot;