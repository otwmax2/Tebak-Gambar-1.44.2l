package com.tebakgambar.model;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Versioning {
    public int downloadedVersion;
    public int levelId;

    public static List<Versioning> getOfflineVersionings(List<Level> list) {
        ArrayList arrayList = new ArrayList();
        for (Level level : list) {
            Versioning versioning = new Versioning();
            versioning.levelId = level.id;
            versioning.downloadedVersion = level.isDefaultLevelAvailable() ? level.version : 0;
            arrayList.add(versioning);
        }
        return arrayList;
    }

    public static List<Versioning> getVersionings(List<Level> list) {
        ArrayList arrayList = new ArrayList();
        for (Level level : list) {
            Versioning versioning = new Versioning();
            versioning.levelId = level.id;
            versioning.downloadedVersion = 0;
            arrayList.add(versioning);
        }
        return arrayList;
    }
}
