document.addEventListener('DOMContentLoaded', () => {
  const project = {
   'resultBlock': document.querySelector('[data-si-results]')
  }

  document.addEventListener('si:send:success', (e) => {
    const {headers, target} = e.detail;

    if((headers['X-SIPRESET'] === 'cart_add' || headers['X-SIPRESET'] === 'cart_remove')) {
      const currentId = target.querySelector('[name="id"]')?.value;
      const main = target.querySelector('[name="options[main]"]')?.value;
      if (currentId === main && main && currentId && project.resultBlock) {
        const params = new FormData();
        params.append('rid', main);
        SendIt?.Sending?.prepareSendParams(document, 'get_discounts', params);
      }
      const promise = MsAltCart.status();
      promise.then((result) => {
        console.log(result)
        for(let key in result.data.cart){
          const rowSelector = MsAltCart.config.rowSelector.replace('${key}', key);
          MsAltCart.carts.forEach(cart => {
            const row = cart.querySelector(rowSelector);
            if(row){
              MsAltCart.updateRow(row, result.data.cart[key])
              MsAltCart.updateTotals(cart, result.data.totals)
            }
          })
        }
      })
    }
  })
})
