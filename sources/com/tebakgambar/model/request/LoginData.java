package com.tebakgambar.model.request;

import java.util.Map;
import y8.l;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class LoginData implements RequestData {
    public String email;
    public String password;

    public LoginData(String str, String str2) {
        this.password = str2;
        this.email = str;
    }

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        l lVar = new l();
        lVar.put("email", this.email);
        lVar.put("password", y.a(this.password));
        return lVar;
    }
}
