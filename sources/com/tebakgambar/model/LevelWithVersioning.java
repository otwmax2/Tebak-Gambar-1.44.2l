package com.tebakgambar.model;

import com.tebakgambar.database.TGDatabase;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LevelWithVersioning {
    public Level level;
    public Versioning versioning;

    public static List<Integer> getAllOutdatedLevelIds(List<LevelWithVersioning> list, int i10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (LevelWithVersioning levelWithVersioning : list) {
            if (levelWithVersioning.isNeedToUpdate()) {
                int i11 = levelWithVersioning.level.id;
                if (i11 >= i10) {
                    arrayList.add(Integer.valueOf(i11));
                } else {
                    arrayList2.add(Integer.valueOf(i11));
                }
            }
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public boolean isNeedToUpdate() {
        return isOutdated() || !this.level.isAvailable();
    }

    public boolean isOutdated() {
        return this.level.version != this.versioning.downloadedVersion;
    }

    public void syncronizeVersion() {
        Versioning versioning = this.versioning;
        versioning.downloadedVersion = this.level.version;
        TGDatabase.C().E().k(versioning);
    }
}
