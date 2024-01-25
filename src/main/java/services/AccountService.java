package services;

import DAO.admin.AccountDAO;
import model.Account;

import java.util.List;

public class AccountService {
    private static AccountService accountService;
    public static AccountService getInstance() {
        if (accountService == null)
            accountService = new AccountService();
        return accountService;
    }
    public Account getAccountByID(String id) {
        return new AccountDAO().getAccountById(id);
    }
    public List<Account> getAllUserServer() {
        return new AccountDAO().getListAccount();
    }


}
