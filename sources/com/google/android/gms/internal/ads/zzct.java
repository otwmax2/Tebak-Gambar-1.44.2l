package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f13926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f13927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f13928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f13929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzfqk f13932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzfqk f13933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f13934j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f13935k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzfqk f13936l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzfqk f13937m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f13938n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final HashMap f13939o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HashSet f13940p;

    @Deprecated
    public zzct() {
        this.f13925a = Integer.MAX_VALUE;
        this.f13926b = Integer.MAX_VALUE;
        this.f13927c = Integer.MAX_VALUE;
        this.f13928d = Integer.MAX_VALUE;
        this.f13929e = Integer.MAX_VALUE;
        this.f13930f = Integer.MAX_VALUE;
        this.f13931g = true;
        this.f13932h = zzfqk.u();
        this.f13933i = zzfqk.u();
        this.f13934j = Integer.MAX_VALUE;
        this.f13935k = Integer.MAX_VALUE;
        this.f13936l = zzfqk.u();
        this.f13937m = zzfqk.u();
        this.f13938n = 0;
        this.f13939o = new HashMap();
        this.f13940p = new HashSet();
    }

    public final zzct d(Context context) {
        CaptioningManager captioningManager;
        if ((zzew.f17494a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
            this.f13938n = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.f13937m = zzfqk.v(zzew.n(locale));
            }
        }
        return this;
    }

    public zzct e(int i10, int i11, boolean z10) {
        this.f13929e = i10;
        this.f13930f = i11;
        this.f13931g = true;
        return this;
    }

    protected zzct(zzcu zzcuVar) {
        this.f13925a = Integer.MAX_VALUE;
        this.f13926b = Integer.MAX_VALUE;
        this.f13927c = Integer.MAX_VALUE;
        this.f13928d = Integer.MAX_VALUE;
        this.f13929e = zzcuVar.f14038i;
        this.f13930f = zzcuVar.f14039j;
        this.f13931g = zzcuVar.f14040k;
        this.f13932h = zzcuVar.f14041l;
        this.f13933i = zzcuVar.f14043n;
        this.f13934j = Integer.MAX_VALUE;
        this.f13935k = Integer.MAX_VALUE;
        this.f13936l = zzcuVar.f14047r;
        this.f13937m = zzcuVar.f14048s;
        this.f13938n = zzcuVar.f14049t;
        this.f13940p = new HashSet(zzcuVar.f14055z);
        this.f13939o = new HashMap(zzcuVar.f14054y);
    }
}
