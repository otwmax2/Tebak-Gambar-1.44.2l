package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccy extends zzccu {
    public zzccy(zzcbj zzcbjVar) {
        super(zzcbjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.zzccu
    public final boolean v(String str) {
        String strJ = zzbyt.j(str);
        zzcbj zzcbjVar = (zzcbj) this.f11864q.get();
        if (zzcbjVar != null && strJ != null) {
            zzcbjVar.y(strJ, this);
        }
        zzbza.g("VideoStreamNoopCache is doing nothing.");
        i(str, strJ, "noop", "Noop cache is a noop.");
        return false;
    }
}
