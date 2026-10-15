package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcoo implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzgxl f13656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzgxl f13657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzgxl f13658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzgxl f13659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzgxl f13660i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgxl f13661j;

    public zzcoo(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4, zzgxl zzgxlVar5, zzgxl zzgxlVar6, zzgxl zzgxlVar7, zzgxl zzgxlVar8, zzgxl zzgxlVar9, zzgxl zzgxlVar10) {
        this.f13652a = zzgxlVar;
        this.f13653b = zzgxlVar2;
        this.f13654c = zzgxlVar3;
        this.f13655d = zzgxlVar4;
        this.f13656e = zzgxlVar5;
        this.f13657f = zzgxlVar6;
        this.f13658g = zzgxlVar7;
        this.f13659h = zzgxlVar8;
        this.f13660i = zzgxlVar9;
        this.f13661j = zzgxlVar10;
    }

    public static zzcon b(zzcql zzcqlVar, Context context, zzeyd zzeydVar, View view, zzcei zzceiVar, zzcqk zzcqkVar, zzdgt zzdgtVar, zzdce zzdceVar, zzgws zzgwsVar, Executor executor) {
        return new zzcon(zzcqlVar, context, zzeydVar, view, zzceiVar, zzcqkVar, zzdgtVar, zzdceVar, zzgwsVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzcon zzb() {
        return new zzcon(((zzcsl) this.f13652a).zzb(), (Context) this.f13653b.zzb(), ((zzcou) this.f13654c).a(), ((zzcot) this.f13655d).a(), ((zzcpf) this.f13656e).a(), ((zzcov) this.f13657f).a(), ((zzdeq) this.f13658g).a(), (zzdce) this.f13659h.zzb(), zzgwx.a(this.f13660i), (Executor) this.f13661j.zzb());
    }
}
