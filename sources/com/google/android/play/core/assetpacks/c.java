package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static c c(Bundle bundle, h1 h1Var, p2 p2Var) {
        return d(bundle, h1Var, p2Var, new ArrayList(), new b0() { // from class: com.google.android.play.core.assetpacks.c0
            @Override // com.google.android.play.core.assetpacks.b0
            public final int P(int i10, String str) {
                return i10;
            }
        });
    }

    private static c d(Bundle bundle, h1 h1Var, p2 p2Var, List<String> list, b0 b0Var) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap map = new HashMap();
        int size = stringArrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = stringArrayList.get(i10);
            map.put(str, AssetPackState.i(bundle, str, h1Var, p2Var, b0Var));
        }
        for (String str2 : list) {
            map.put(str2, AssetPackState.h(str2, 4, 0, 0L, 0L, 0.0d, 1, BuildConfig.FLAVOR, BuildConfig.FLAVOR));
        }
        return new k0(bundle.getLong("total_bytes_to_download"), map);
    }

    public abstract Map<String, AssetPackState> a();

    public abstract long b();
}
