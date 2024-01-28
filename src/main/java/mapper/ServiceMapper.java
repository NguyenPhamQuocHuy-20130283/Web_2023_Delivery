package mapper;

import model.Account;
import model.Service;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ServiceMapper implements RowMapper<Service> {
    @Override
    public Service map(ResultSet rs, StatementContext ctx) throws SQLException {
        return new Service(
                rs.getInt("idService"),
                rs.getString("name"),
                rs.getInt("price"),
                rs.getBoolean("isActive"),
                rs.getDate("updateAt")
        );
    }
}
