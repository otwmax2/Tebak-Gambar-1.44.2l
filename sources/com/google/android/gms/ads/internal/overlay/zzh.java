package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcei;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewGroup.LayoutParams f5999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f6000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f6001d;

    public zzh(zzcei zzceiVar) throws a {
        this.f5999b = zzceiVar.getLayoutParams();
        ViewParent parent = zzceiVar.getParent();
        this.f6001d = zzceiVar.H();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new a("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.f6000c = viewGroup;
        this.f5998a = viewGroup.indexOfChild(zzceiVar.L());
        viewGroup.removeView(zzceiVar.L());
        zzceiVar.S0(true);
    }
}
