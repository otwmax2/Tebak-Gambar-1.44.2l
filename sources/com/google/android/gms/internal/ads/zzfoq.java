package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfoq extends zzfrb {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfos f18525o;

    zzfoq(zzfos zzfosVar) {
        this.f18525o = zzfosVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrb
    final Map c() {
        return this.f18525o;
    }

    @Override // com.google.android.gms.internal.ads.zzfrb, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return zzfpl.a(this.f18525o.f18529r.entrySet(), obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfor(this.f18525o);
    }

    @Override // com.google.android.gms.internal.ads.zzfrb, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        zzfpf.t(this.f18525o.f18530s, entry.getKey());
        return true;
    }
}
