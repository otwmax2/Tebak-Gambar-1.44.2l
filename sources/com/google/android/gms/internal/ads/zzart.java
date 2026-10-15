package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzart extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f9827i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final View f9828j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Context f9829k;

    public zzart(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, Map map, View view, Context context) {
        super(zzaqxVar, "uJP+jOkstXYybMCjk2UNbhttr8UNt74vp0QYS1O6gudZhXLs5QWRNg4TXtm9Zlmd", "mdZYlvc02sSKOzn2zFon1K3MqwwFkSMjVA38SM16TyQ=", zzamvVar, i10, 85);
        this.f9827i = map;
        this.f9828j = view;
        this.f9829k = context;
    }

    private final long c(int i10) {
        Map map = this.f9827i;
        Integer numValueOf = Integer.valueOf(i10);
        if (map.containsKey(numValueOf)) {
            return ((Long) this.f9827i.get(numValueOf)).longValue();
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long[] jArr = {c(1), c(2)};
        Context contextB = this.f9829k;
        if (contextB == null) {
            contextB = this.f9855b.b();
        }
        long[] jArr2 = (long[]) this.f9859f.invoke(null, jArr, contextB, this.f9828j);
        long j10 = jArr2[0];
        this.f9827i.put(1, Long.valueOf(jArr2[1]));
        long j11 = jArr2[2];
        this.f9827i.put(2, Long.valueOf(jArr2[3]));
        synchronized (this.f9858e) {
            this.f9858e.v0(j10);
            this.f9858e.u0(j11);
        }
    }
}
