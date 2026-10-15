package com.tebakgambar.model;

import android.content.Context;
import com.google.gson.f;
import com.tebakgambar.model.request.LevelStructure2;
import com.vungle.mediation.BuildConfig;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class GameData {
    public String data;
    public LevelStructure2 lastLevelStructure;
    public String life;

    public GameData(Context context) {
        this.life = m8.a.f().g() + BuildConfig.FLAVOR;
        this.lastLevelStructure = new LevelStructure2(context);
    }

    private void decode() {
        String[] strArrSplit = y.g(this.data, "d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc").split("#");
        this.life = strArrSplit[3];
        this.lastLevelStructure = (LevelStructure2) new f().k(strArrSplit[7], LevelStructure2.class);
    }

    public String toGameToken() {
        String strM = y.m(System.currentTimeMillis() + "#0#" + System.currentTimeMillis() + "#" + this.life + "#" + System.currentTimeMillis() + "#0#" + System.currentTimeMillis() + "#" + this.lastLevelStructure.toJsonString() + "#" + System.currentTimeMillis());
        this.data = strM;
        return strM;
    }

    public GameData(String str) {
        this.data = str;
        decode();
    }
}
