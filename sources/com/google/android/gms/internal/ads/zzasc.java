package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasc extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f9838i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f9839j;

    public zzasc(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, Context context) {
        super(zzaqxVar, "CRusF084WLXlYQUHrYrs2r/R+2VKdiClv0NdEd7QrkclQLbsoBgPD6jF9jLeUeO0", "2PenHGVoRtCO3QQhfYSZVJz6AfJrwJ5fA2DWAmwbKY4=", zzamvVar, i10, 31);
        this.f9838i = null;
        this.f9839j = context;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.M(-1L);
        this.f9858e.H(-1L);
        Context contextB = this.f9839j;
        if (contextB == null) {
            contextB = this.f9855b.b();
        }
        if (this.f9838i == null) {
            this.f9838i = (List) this.f9859f.invoke(null, contextB);
        }
        List list = this.f9838i;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.f9858e) {
            this.f9858e.M(((Long) this.f9838i.get(0)).longValue());
            this.f9858e.H(((Long) this.f9838i.get(1)).longValue());
        }
    }
}
