package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import o.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhz implements zzhj {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f23563b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f23564a;

    static zzhz a(Context context, String str) {
        zzhz zzhzVar;
        if (zzha.a()) {
            throw null;
        }
        synchronized (zzhz.class) {
            zzhzVar = (zzhz) f23563b.get(null);
            if (zzhzVar == null) {
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    throw null;
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    throw th;
                }
            }
        }
        return zzhzVar;
    }

    static synchronized void b() {
        Map map = f23563b;
        Iterator it = map.values().iterator();
        if (it.hasNext()) {
            SharedPreferences sharedPreferences = ((zzhz) it.next()).f23564a;
            throw null;
        }
        map.clear();
    }

    @Override // com.google.android.gms.internal.measurement.zzhj
    public final Object u(String str) {
        throw null;
    }
}
