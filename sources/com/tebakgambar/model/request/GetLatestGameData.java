package com.tebakgambar.model.request;

import com.tebakgambar.model.LocalUserData;
import java.util.Map;
import y8.l;

/* JADX INFO: loaded from: classes2.dex */
public class GetLatestGameData implements RequestData {
    public String syncToken = LocalUserData.getInstance().getSyncToken();

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        l lVar = new l();
        lVar.put("sync_token", this.syncToken);
        return lVar;
    }
}
