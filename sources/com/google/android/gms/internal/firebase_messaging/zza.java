package com.google.android.gms.internal.firebase_messaging;

import d6.c;
import d6.d;
import d6.e;
import java.io.IOException;
import s6.a;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zza implements d<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final zza f22953a = new zza();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f22954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f22955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c f22956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final c f22957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final c f22958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final c f22959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final c f22960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final c f22961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final c f22962j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final c f22963k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final c f22964l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final c f22965m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final c f22966n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final c f22967o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final c f22968p;

    static {
        c.b bVarA = c.a("projectNumber");
        zzv zzvVar = new zzv();
        zzvVar.a(1);
        f22954b = bVarA.b(zzvVar.b()).a();
        c.b bVarA2 = c.a("messageId");
        zzv zzvVar2 = new zzv();
        zzvVar2.a(2);
        f22955c = bVarA2.b(zzvVar2.b()).a();
        c.b bVarA3 = c.a("instanceId");
        zzv zzvVar3 = new zzv();
        zzvVar3.a(3);
        f22956d = bVarA3.b(zzvVar3.b()).a();
        c.b bVarA4 = c.a("messageType");
        zzv zzvVar4 = new zzv();
        zzvVar4.a(4);
        f22957e = bVarA4.b(zzvVar4.b()).a();
        c.b bVarA5 = c.a("sdkPlatform");
        zzv zzvVar5 = new zzv();
        zzvVar5.a(5);
        f22958f = bVarA5.b(zzvVar5.b()).a();
        c.b bVarA6 = c.a("packageName");
        zzv zzvVar6 = new zzv();
        zzvVar6.a(6);
        f22959g = bVarA6.b(zzvVar6.b()).a();
        c.b bVarA7 = c.a("collapseKey");
        zzv zzvVar7 = new zzv();
        zzvVar7.a(7);
        f22960h = bVarA7.b(zzvVar7.b()).a();
        c.b bVarA8 = c.a("priority");
        zzv zzvVar8 = new zzv();
        zzvVar8.a(8);
        f22961i = bVarA8.b(zzvVar8.b()).a();
        c.b bVarA9 = c.a("ttl");
        zzv zzvVar9 = new zzv();
        zzvVar9.a(9);
        f22962j = bVarA9.b(zzvVar9.b()).a();
        c.b bVarA10 = c.a("topic");
        zzv zzvVar10 = new zzv();
        zzvVar10.a(10);
        f22963k = bVarA10.b(zzvVar10.b()).a();
        c.b bVarA11 = c.a("bulkId");
        zzv zzvVar11 = new zzv();
        zzvVar11.a(11);
        f22964l = bVarA11.b(zzvVar11.b()).a();
        c.b bVarA12 = c.a("event");
        zzv zzvVar12 = new zzv();
        zzvVar12.a(12);
        f22965m = bVarA12.b(zzvVar12.b()).a();
        c.b bVarA13 = c.a("analyticsLabel");
        zzv zzvVar13 = new zzv();
        zzvVar13.a(13);
        f22966n = bVarA13.b(zzvVar13.b()).a();
        c.b bVarA14 = c.a("campaignId");
        zzv zzvVar14 = new zzv();
        zzvVar14.a(14);
        f22967o = bVarA14.b(zzvVar14.b()).a();
        c.b bVarA15 = c.a("composerLabel");
        zzv zzvVar15 = new zzv();
        zzvVar15.a(15);
        f22968p = bVarA15.b(zzvVar15.b()).a();
    }

    private zza() {
    }

    @Override // d6.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) throws IOException {
        a aVar = (a) obj;
        e eVar = (e) obj2;
        eVar.c(f22954b, aVar.l());
        eVar.e(f22955c, aVar.h());
        eVar.e(f22956d, aVar.g());
        eVar.e(f22957e, aVar.i());
        eVar.e(f22958f, aVar.m());
        eVar.e(f22959g, aVar.j());
        eVar.e(f22960h, aVar.d());
        eVar.d(f22961i, aVar.k());
        eVar.d(f22962j, aVar.o());
        eVar.e(f22963k, aVar.n());
        eVar.c(f22964l, aVar.b());
        eVar.e(f22965m, aVar.f());
        eVar.e(f22966n, aVar.a());
        eVar.c(f22967o, aVar.c());
        eVar.e(f22968p, aVar.e());
    }
}
