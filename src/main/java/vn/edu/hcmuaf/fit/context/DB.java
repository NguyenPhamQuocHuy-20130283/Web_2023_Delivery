package vn.edu.hcmuaf.fit.context;

import vn.edu.hcmuaf.fit.bean.AbBean;
import vn.edu.hcmuaf.fit.bean.Log;

import java.sql.SQLException;


public class DB {
    private static DB install;

    public static DB me() {
        if (install == null)
            install = new DB();
        return install;
    }

    private DB() {

    }

    public boolean insert(AbBean bean) {
        return bean.insert(DBContext.me());
    }

    public static void main(String[] args) {
        Log log= new Log(Log.INFO,"0:0:0:1",-1,"LOGIN FALSE","User ABC",0);
        DB.me().insert(log);
    }
}
