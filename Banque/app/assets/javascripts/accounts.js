

var AccountApp = {
  accountsArray: [],
  showAccounts: function(){
     $.ajax({
        type: 'get',
        url: '/',
        dataType: 'json'
      }).done(function(data){
        console.log(data);
        AccountApp.accountsArray = data;
        AccountApp.appendAccount();
      });
    },

  appendAccount: function(){
    for(var i = 0; i < AccountApp.accountsArray.length; i ++){
      $('#accounts').append($('<ul></ul>')).append($('<li>Account: ' + AccountApp.accountsArray[i].id + ', balance: ' + AccountApp.accountsArray[i].balance + '</li>'));}
      },


  showDeposit: function(){
    console.log('click');
    $.ajax({
    url: '/deposit',
    type: 'get',
    dataType: 'script'
    });
  },


  addDepositAmount: function(event){
    console.log('click', event);
    var account = $('#accountName').val();
    var amount = $('#depositAmount').val();
    console.log(amount);
    to_add = {"amount": amount};
    $.ajax({
      url: '/deposit/' + account,
      type: 'post',
      dataType: 'script',
      data: to_add
    });
  }

};








$(function () {

  AccountApp.showAccounts();
  $('#deposit').click(AccountApp.showDeposit);


  });




