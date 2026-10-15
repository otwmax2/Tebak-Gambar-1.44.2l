package com.google.android.gms.games;

import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzh extends DataBufferRef {
    public zzh(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    protected final int C(String str, int i10) {
        return (!y(str) || z(str)) ? i10 : v(str);
    }

    protected final String D(String str, String str2) {
        if (!y(str) || z(str)) {
            return null;
        }
        return x(str);
    }
}
