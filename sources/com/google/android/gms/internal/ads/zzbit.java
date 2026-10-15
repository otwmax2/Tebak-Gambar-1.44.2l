package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final OnH5AdsEventListener f10773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzbip f10774c;

    public static final boolean b(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O8)).booleanValue()) {
            return false;
        }
        Preconditions.k(str);
        if (str.length() > ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q8)).intValue()) {
            zzbza.b("H5 GMSG exceeds max length");
            return false;
        }
        Uri uri = Uri.parse(str);
        return "gmsg".equals(uri.getScheme()) && "mobileads.google.com".equals(uri.getHost()) && "/h5ads".equals(uri.getPath());
    }

    private final void c() {
        if (this.f10774c != null) {
            return;
        }
        this.f10774c = com.google.android.gms.ads.internal.client.zzay.a().j(this.f10772a, new zzbnc(), this.f10773b);
    }

    public final boolean a(String str) {
        if (!b(str)) {
            return false;
        }
        c();
        zzbip zzbipVar = this.f10774c;
        if (zzbipVar == null) {
            return false;
        }
        try {
            zzbipVar.I(str);
            return true;
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            return true;
        }
    }
}
