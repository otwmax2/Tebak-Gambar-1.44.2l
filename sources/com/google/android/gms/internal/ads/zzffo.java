package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffo extends zzffk {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f18104i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzffm f18105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzffl f18106b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzfhi f18108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzfgl f18109e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f18107c = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f18110f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f18111g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f18112h = UUID.randomUUID().toString();

    zzffo(zzffl zzfflVar, zzffm zzffmVar) {
        this.f18106b = zzfflVar;
        this.f18105a = zzffmVar;
        k(null);
        if (zzffmVar.d() == zzffn.HTML || zzffmVar.d() == zzffn.JAVASCRIPT) {
            this.f18109e = new zzfgm(zzffmVar.a());
        } else {
            this.f18109e = new zzfgo(zzffmVar.i(), null);
        }
        this.f18109e.j();
        zzffz.a().d(this);
        zzfge.a().d(this.f18109e.a(), zzfflVar.b());
    }

    private final void k(View view) {
        this.f18108d = new zzfhi(view);
    }

    @Override // com.google.android.gms.internal.ads.zzffk
    public final void b(View view, zzffq zzffqVar, String str) {
        zzfgb zzfgbVar;
        if (this.f18111g) {
            return;
        }
        if (!f18104i.matcher("Ad overlay").matches()) {
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
        }
        Iterator it = this.f18107c.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzfgbVar = null;
                break;
            } else {
                zzfgbVar = (zzfgb) it.next();
                if (zzfgbVar.b().get() == view) {
                    break;
                }
            }
        }
        if (zzfgbVar == null) {
            this.f18107c.add(new zzfgb(view, zzffqVar, "Ad overlay"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffk
    public final void c() {
        if (this.f18111g) {
            return;
        }
        this.f18108d.clear();
        if (!this.f18111g) {
            this.f18107c.clear();
        }
        this.f18111g = true;
        zzfge.a().c(this.f18109e.a());
        zzffz.a().e(this);
        this.f18109e.c();
        this.f18109e = null;
    }

    @Override // com.google.android.gms.internal.ads.zzffk
    public final void d(View view) {
        if (this.f18111g || f() == view) {
            return;
        }
        k(view);
        this.f18109e.b();
        Collection<zzffo> collectionC = zzffz.a().c();
        if (collectionC == null || collectionC.isEmpty()) {
            return;
        }
        for (zzffo zzffoVar : collectionC) {
            if (zzffoVar != this && zzffoVar.f() == view) {
                zzffoVar.f18108d.clear();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffk
    public final void e() {
        if (this.f18110f) {
            return;
        }
        this.f18110f = true;
        zzffz.a().f(this);
        this.f18109e.h(zzfgf.b().a());
        this.f18109e.f(this, this.f18105a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View f() {
        return (View) this.f18108d.get();
    }

    public final zzfgl g() {
        return this.f18109e;
    }

    public final String h() {
        return this.f18112h;
    }

    public final List i() {
        return this.f18107c;
    }

    public final boolean j() {
        return this.f18110f && !this.f18111g;
    }
}
