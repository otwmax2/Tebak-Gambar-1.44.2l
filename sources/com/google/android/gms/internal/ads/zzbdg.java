package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.tebakgambar.model.response.ApiResponse;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdg extends zzbdo {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f10627w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int f10628x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f10629y;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f10630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List f10631p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final List f10632q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f10633r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f10634s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f10635t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f10636u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f10637v;

    static {
        int iRgb = Color.rgb(12, 174, 206);
        f10627w = iRgb;
        f10628x = Color.rgb(ApiResponse.STATUS_LINK_SUCCESS, ApiResponse.STATUS_LINK_SUCCESS, ApiResponse.STATUS_LINK_SUCCESS);
        f10629y = iRgb;
    }

    public zzbdg(String str, List list, Integer num, Integer num2, Integer num3, int i10, int i11, boolean z10) {
        this.f10630o = str;
        for (int i12 = 0; i12 < list.size(); i12++) {
            zzbdj zzbdjVar = (zzbdj) list.get(i12);
            this.f10631p.add(zzbdjVar);
            this.f10632q.add(zzbdjVar);
        }
        this.f10633r = num != null ? num.intValue() : f10628x;
        this.f10634s = num2 != null ? num2.intValue() : f10629y;
        this.f10635t = num3 != null ? num3.intValue() : 12;
        this.f10636u = i10;
        this.f10637v = i11;
    }

    public final int Ta() {
        return this.f10635t;
    }

    public final List Ua() {
        return this.f10631p;
    }

    public final int a() {
        return this.f10637v;
    }

    public final int b() {
        return this.f10634s;
    }

    public final int d() {
        return this.f10633r;
    }

    @Override // com.google.android.gms.internal.ads.zzbdp
    public final String e() {
        return this.f10630o;
    }

    @Override // com.google.android.gms.internal.ads.zzbdp
    public final List f() {
        return this.f10632q;
    }

    public final int zzb() {
        return this.f10636u;
    }
}
