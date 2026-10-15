package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdj extends zzbdw {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Drawable f10640o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Uri f10641p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final double f10642q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f10643r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f10644s;

    public zzbdj(Drawable drawable, Uri uri, double d10, int i10, int i11) {
        this.f10640o = drawable;
        this.f10641p = uri;
        this.f10642q = d10;
        this.f10643r = i10;
        this.f10644s = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final int a() {
        return this.f10644s;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final Uri b() throws RemoteException {
        return this.f10641p;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final IObjectWrapper c() throws RemoteException {
        return ObjectWrapper.Q4(this.f10640o);
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final int d() {
        return this.f10643r;
    }

    @Override // com.google.android.gms.internal.ads.zzbdx
    public final double zzb() {
        return this.f10642q;
    }
}
