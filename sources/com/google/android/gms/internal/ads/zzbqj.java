package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqj extends NativeAd.Image {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbdx f11168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f11169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f11170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f11171d;

    public zzbqj(zzbdx zzbdxVar) {
        double dZzb;
        IObjectWrapper iObjectWrapperC;
        this.f11168a = zzbdxVar;
        Uri uriB = null;
        try {
            iObjectWrapperC = zzbdxVar.c();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        Drawable drawable = iObjectWrapperC != null ? (Drawable) ObjectWrapper.t1(iObjectWrapperC) : null;
        this.f11169b = drawable;
        try {
            uriB = this.f11168a.b();
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
        this.f11170c = uriB;
        try {
            dZzb = this.f11168a.zzb();
        } catch (RemoteException e12) {
            zzbza.e(BuildConfig.FLAVOR, e12);
            dZzb = 1.0d;
        }
        this.f11171d = dZzb;
        try {
            this.f11168a.d();
        } catch (RemoteException e13) {
            zzbza.e(BuildConfig.FLAVOR, e13);
        }
        try {
            this.f11168a.a();
        } catch (RemoteException e14) {
            zzbza.e(BuildConfig.FLAVOR, e14);
        }
    }
}
