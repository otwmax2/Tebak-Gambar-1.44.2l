package com.tebakgambar.model.request;

import java.util.Map;
import y8.l;

/* JADX INFO: loaded from: classes2.dex */
public class ForgotPasswordData implements RequestData {
    public String email;

    public ForgotPasswordData(String str) {
        this.email = str;
    }

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        l lVar = new l();
        lVar.put("email", this.email);
        return lVar;
    }
}
