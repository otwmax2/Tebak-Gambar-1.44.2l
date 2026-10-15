package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzczz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f14232a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f14233b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f14234c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f14235d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f14236e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set f14237f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set f14238g = new HashSet();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Set f14239h = new HashSet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Set f14240i = new HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Set f14241j = new HashSet();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Set f14242k = new HashSet();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Set f14243l = new HashSet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Set f14244m = new HashSet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f14245n = new HashSet();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzevq f14246o;

    public final zzczz d(com.google.android.gms.ads.internal.client.zza zzaVar, Executor executor) {
        this.f14234c.add(new zzdbu(zzaVar, executor));
        return this;
    }

    public final zzczz e(zzcur zzcurVar, Executor executor) {
        this.f14240i.add(new zzdbu(zzcurVar, executor));
        return this;
    }

    public final zzczz f(zzcve zzcveVar, Executor executor) {
        this.f14243l.add(new zzdbu(zzcveVar, executor));
        return this;
    }

    public final zzczz g(zzcvi zzcviVar, Executor executor) {
        this.f14237f.add(new zzdbu(zzcviVar, executor));
        return this;
    }

    public final zzczz h(zzcuo zzcuoVar, Executor executor) {
        this.f14236e.add(new zzdbu(zzcuoVar, executor));
        return this;
    }

    public final zzczz i(zzcwc zzcwcVar, Executor executor) {
        this.f14239h.add(new zzdbu(zzcwcVar, executor));
        return this;
    }

    public final zzczz j(zzcwn zzcwnVar, Executor executor) {
        this.f14238g.add(new zzdbu(zzcwnVar, executor));
        return this;
    }

    public final zzczz k(com.google.android.gms.ads.internal.overlay.zzo zzoVar, Executor executor) {
        this.f14245n.add(new zzdbu(zzoVar, executor));
        return this;
    }

    public final zzczz l(zzcwz zzcwzVar, Executor executor) {
        this.f14244m.add(new zzdbu(zzcwzVar, executor));
        return this;
    }

    public final zzczz m(zzcxj zzcxjVar, Executor executor) {
        this.f14233b.add(new zzdbu(zzcxjVar, executor));
        return this;
    }

    public final zzczz n(AppEventListener appEventListener, Executor executor) {
        this.f14242k.add(new zzdbu(appEventListener, executor));
        return this;
    }

    public final zzczz o(zzdcc zzdccVar, Executor executor) {
        this.f14235d.add(new zzdbu(zzdccVar, executor));
        return this;
    }

    public final zzczz p(zzevq zzevqVar) {
        this.f14246o = zzevqVar;
        return this;
    }

    public final zzdab q() {
        return new zzdab(this, null);
    }
}
