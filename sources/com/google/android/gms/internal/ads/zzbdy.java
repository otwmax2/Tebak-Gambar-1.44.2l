package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdy extends NativeAd.Image {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbdx f10658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f10659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f10660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f10661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10663f;

    public zzbdy(zzbdx zzbdxVar) {
        double dZzb;
        int iD;
        IObjectWrapper iObjectWrapperC;
        this.f10658a = zzbdxVar;
        Uri uriB = null;
        try {
            iObjectWrapperC = zzbdxVar.c();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        Drawable drawable = iObjectWrapperC != null ? (Drawable) ObjectWrapper.t1(iObjectWrapperC) : null;
        this.f10659b = drawable;
        try {
            uriB = this.f10658a.b();
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
        this.f10660c = uriB;
        try {
            dZzb = this.f10658a.zzb();
        } catch (RemoteException e12) {
            zzbza.e(BuildConfig.FLAVOR, e12);
            dZzb = 1.0d;
        }
        this.f10661d = dZzb;
        int iA = -1;
        try {
            iD = this.f10658a.d();
        } catch (RemoteException e13) {
            zzbza.e(BuildConfig.FLAVOR, e13);
            iD = -1;
        }
        this.f10662e = iD;
        try {
            iA = this.f10658a.a();
        } catch (RemoteException e14) {
            zzbza.e(BuildConfig.FLAVOR, e14);
        }
        this.f10663f = iA;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable a() {
        return this.f10659b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double b() {
        return this.f10661d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri c() {
        return this.f10660c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int d() {
        return this.f10663f;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int e() {
        return this.f10662e;
    }
}
