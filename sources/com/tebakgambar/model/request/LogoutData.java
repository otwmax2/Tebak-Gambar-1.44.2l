package com.tebakgambar.model.request;

import android.content.Context;
import com.tebakgambar.model.GameData;
import com.tebakgambar.model.LocalUserData;
import java.util.Map;
import y8.l;

/* JADX INFO: loaded from: classes2.dex */
public class LogoutData implements RequestData {
    public GameData gameData;
    public String syncToken;

    public LogoutData() {
        this.syncToken = LocalUserData.getInstance().getSyncToken();
    }

    @Override // com.tebakgambar.model.request.RequestData
    public Map<String, String> toFieldMap() {
        l lVar = new l();
        lVar.put("sync_token", this.syncToken);
        return lVar;
    }

    public LogoutData(Context context) {
        this();
        this.gameData = new GameData(context);
    }
}
