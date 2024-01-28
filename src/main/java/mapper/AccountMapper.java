package mapper;

import model.Account;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountMapper implements RowMapper<Account> {


    @Override
    public Account map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Account(
                rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
                rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
                rs.getString("NumberPhone"), rs.getInt("id_role_member")
        );
    }
}
