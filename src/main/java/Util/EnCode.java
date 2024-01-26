package Util;

import java.security.MessageDigest;
import java.util.Base64;

public class EnCode {
    public static String toSHA1(String st) {
        String result = null;
        String begin = "dsfh$474HDhf18321;]'[dtAh,./ad.52385";
        String end = "4dshfu@%%$^*yKKG:0-8FA4!*^4}{7M&f35";

        st = begin + st + end;

        try {
            byte[] dataBytes = st.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("toSHA1");
            result = Base64.encodeBase64String(md.digest(dataBytes));
        } catch (Exception e){
            e.printStackTrace();
        }

        return result;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("L0123456Lll!@"));
    }
}
