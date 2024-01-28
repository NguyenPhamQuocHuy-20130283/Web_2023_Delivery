package utils;
import java.io.IOException;

import Contanst.GoogleContanst;
import model.Account;
import model.GoogleAccount;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class GoogleUtils {
    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String response = Request.Post(GoogleContanst.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", GoogleContanst.GOOGLE_CLIENT_ID)
                        .add("client_secret", GoogleContanst.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri",GoogleContanst.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", GoogleContanst.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }
    public static GoogleAccount getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = GoogleContanst.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        GoogleAccount googleAccount = new Gson().fromJson(response, GoogleAccount.class);
        System.out.println(googleAccount);
        return googleAccount;
    }
}
