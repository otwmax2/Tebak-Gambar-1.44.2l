package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcbj f11697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f11698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzcax f11699d;

    public zzcay(Context context, ViewGroup viewGroup, zzcei zzceiVar) {
        this.f11696a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11698c = viewGroup;
        this.f11697b = zzceiVar;
        this.f11699d = null;
    }

    public final zzcax a() {
        return this.f11699d;
    }

    public final void b(int i10, int i11, int i12, int i13) {
        Preconditions.f("The underlay may only be modified from the UI thread.");
        zzcax zzcaxVar = this.f11699d;
        if (zzcaxVar != null) {
            zzcaxVar.o(i10, i11, i12, i13);
        }
    }

    public final void c(int i10, int i11, int i12, int i13, int i14, boolean z10, zzcbi zzcbiVar, Integer num) {
        if (this.f11699d != null) {
            return;
        }
        zzbbb.a(this.f11697b.l().a(), this.f11697b.i(), "vpr2");
        Context context = this.f11696a;
        zzcbj zzcbjVar = this.f11697b;
        zzcax zzcaxVar = new zzcax(context, zzcbjVar, i14, z10, zzcbjVar.l().a(), zzcbiVar, num);
        this.f11699d = zzcaxVar;
        this.f11698c.addView(zzcaxVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f11699d.o(i10, i11, i12, i13);
        this.f11697b.u0(false);
    }

    public final void d() {
        Preconditions.f("onDestroy must be called from the UI thread.");
        zzcax zzcaxVar = this.f11699d;
        if (zzcaxVar != null) {
            zzcaxVar.y();
            this.f11698c.removeView(this.f11699d);
            this.f11699d = null;
        }
    }

    public final void e() {
        Preconditions.f("onPause must be called from the UI thread.");
        zzcax zzcaxVar = this.f11699d;
        if (zzcaxVar != null) {
            zzcaxVar.E();
        }
    }

    public final void f(int i10) {
        zzcax zzcaxVar = this.f11699d;
        if (zzcaxVar != null) {
            zzcaxVar.k(i10);
        }
    }
}
