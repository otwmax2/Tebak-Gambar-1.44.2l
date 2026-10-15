package com.tebakgambar.model.request;

import b7.c;
import java.util.Map;
import y8.l;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class RegisterData implements RequestData {
    public String email;

    @c("full_name")
    public String fullName;
    public String password;

    @c("sync_token")
    public String syncToken;

    public RegisterData(String str, String str2, String str3, String str4) {
        this.email = str;
        this.password = str2;
        this.fullName = str3;
        this.syncToken = str4;
    }

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        l lVar = new l();
        lVar.put("email", this.email);
        lVar.put("password", y.a(this.password));
        lVar.put("full_name", this.fullName);
        lVar.put("sync_token", this.syncToken);
        return lVar;
    }
}
