package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfn implements zzfg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f18459b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfg f18460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfg f18461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzfg f18462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzfg f18463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzfg f18464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzfg f18465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzfg f18466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzfg f18467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private zzfg f18468k;

    public zzfn(Context context, zzfg zzfgVar) {
        this.f18458a = context.getApplicationContext();
        this.f18460c = zzfgVar;
    }

    private final zzfg n() {
        if (this.f18462e == null) {
            zzez zzezVar = new zzez(this.f18458a);
            this.f18462e = zzezVar;
            o(zzezVar);
        }
        return this.f18462e;
    }

    private final void o(zzfg zzfgVar) {
        for (int i10 = 0; i10 < this.f18459b.size(); i10++) {
            zzfgVar.f((zzgi) this.f18459b.get(i10));
        }
    }

    private static final void p(zzfg zzfgVar, zzgi zzgiVar) {
        if (zzfgVar != null) {
            zzfgVar.f(zzgiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        zzfg zzfgVar = this.f18468k;
        if (zzfgVar == null) {
            return null;
        }
        return zzfgVar.a();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Map b() {
        zzfg zzfgVar = this.f18468k;
        return zzfgVar == null ? Collections.emptyMap() : zzfgVar.b();
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() throws IOException {
        zzfg zzfgVar = this.f18468k;
        if (zzfgVar != null) {
            try {
                zzfgVar.d();
            } finally {
                this.f18468k = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws IOException {
        zzfg zzfgVar = this.f18468k;
        Objects.requireNonNull(zzfgVar);
        return zzfgVar.e(bArr, i10, i11);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void f(zzgi zzgiVar) {
        Objects.requireNonNull(zzgiVar);
        this.f18460c.f(zzgiVar);
        this.f18459b.add(zzgiVar);
        p(this.f18461d, zzgiVar);
        p(this.f18462e, zzgiVar);
        p(this.f18463f, zzgiVar);
        p(this.f18464g, zzgiVar);
        p(this.f18465h, zzgiVar);
        p(this.f18466i, zzgiVar);
        p(this.f18467j, zzgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws IOException {
        zzfg zzfgVar;
        zzdl.f(this.f18468k == null);
        String scheme = zzflVar.f18368a.getScheme();
        if (zzew.x(zzflVar.f18368a)) {
            String path = zzflVar.f18368a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f18461d == null) {
                    zzfw zzfwVar = new zzfw();
                    this.f18461d = zzfwVar;
                    o(zzfwVar);
                }
                this.f18468k = this.f18461d;
            } else {
                this.f18468k = n();
            }
        } else if ("asset".equals(scheme)) {
            this.f18468k = n();
        } else if ("content".equals(scheme)) {
            if (this.f18463f == null) {
                zzfd zzfdVar = new zzfd(this.f18458a);
                this.f18463f = zzfdVar;
                o(zzfdVar);
            }
            this.f18468k = this.f18463f;
        } else if ("rtmp".equals(scheme)) {
            if (this.f18464g == null) {
                try {
                    zzfg zzfgVar2 = (zzfg) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f18464g = zzfgVar2;
                    o(zzfgVar2);
                } catch (ClassNotFoundException unused) {
                    zzee.e("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating RTMP extension", e10);
                }
                if (this.f18464g == null) {
                    this.f18464g = this.f18460c;
                }
            }
            this.f18468k = this.f18464g;
        } else if ("udp".equals(scheme)) {
            if (this.f18465h == null) {
                zzgk zzgkVar = new zzgk(2000);
                this.f18465h = zzgkVar;
                o(zzgkVar);
            }
            this.f18468k = this.f18465h;
        } else if ("data".equals(scheme)) {
            if (this.f18466i == null) {
                zzfe zzfeVar = new zzfe();
                this.f18466i = zzfeVar;
                o(zzfeVar);
            }
            this.f18468k = this.f18466i;
        } else {
            if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f18467j == null) {
                    zzgg zzggVar = new zzgg(this.f18458a);
                    this.f18467j = zzggVar;
                    o(zzggVar);
                }
                zzfgVar = this.f18467j;
            } else {
                zzfgVar = this.f18460c;
            }
            this.f18468k = zzfgVar;
        }
        return this.f18468k.j(zzflVar);
    }
}
