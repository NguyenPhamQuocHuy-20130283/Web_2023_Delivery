package Connect;

import model.AdBean;
import model.Log;

public class DB {
    private static DB install;

    public static DB me() {
        if (install == null)
            install = new DB();
        return install;
    }

    private DB() {

    }

    public boolean insert(AdBean bean) {
        return bean.insert(DBConnect.me());
    }

    public static void main(String[] args) {
        Log log= new Log(Log.INFO,"0:0:0:1",-1,"LOGIN FALSE","User ABC",0);
        DB.me().insert(log);
    }
}
