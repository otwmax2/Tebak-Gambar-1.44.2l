package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class w1 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final v4.a f26150g = new v4.a("ExtractorSessionStoreView");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f26151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.y<u3> f26152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h1 f26153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v4.y<Executor> f26154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Integer, t1> f26155e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ReentrantLock f26156f = new ReentrantLock();

    w1(e0 e0Var, v4.y<u3> yVar, h1 h1Var, v4.y<Executor> yVar2) {
        this.f26151a = e0Var;
        this.f26152b = yVar;
        this.f26153c = h1Var;
        this.f26154d = yVar2;
    }

    private final t1 o(int i10) {
        Map<Integer, t1> map = this.f26155e;
        Integer numValueOf = Integer.valueOf(i10);
        t1 t1Var = map.get(numValueOf);
        if (t1Var != null) {
            return t1Var;
        }
        throw new d1(String.format("Could not find session %d while trying to get it", numValueOf), i10);
    }

    private final <T> T p(v1<T> v1Var) {
        try {
            this.f26156f.lock();
            return v1Var.zza();
        } finally {
            this.f26156f.unlock();
        }
    }

    private static String q(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            throw new d1("Session without pack received.");
        }
        return stringArrayList.get(0);
    }

    private static <T> List<T> r(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    private final Map<String, t1> s(final List<String> list) {
        return (Map) p(new v1() { // from class: com.google.android.play.core.assetpacks.p1
            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                return this.f26035a.g(list);
            }
        });
    }

    final /* synthetic */ Boolean a(Bundle bundle) {
        int i10 = bundle.getInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID);
        if (i10 == 0) {
            return Boolean.TRUE;
        }
        Map<Integer, t1> map = this.f26155e;
        Integer numValueOf = Integer.valueOf(i10);
        if (!map.containsKey(numValueOf)) {
            return Boolean.TRUE;
        }
        if (this.f26155e.get(numValueOf).f26087c.f26077d == 6) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!d0.c(r0.f26087c.f26077d, bundle.getInt(t4.b.a("status", q(bundle)))));
    }

    final /* synthetic */ Boolean b(Bundle bundle) {
        int i10 = bundle.getInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID);
        if (i10 == 0) {
            return Boolean.FALSE;
        }
        Map<Integer, t1> map = this.f26155e;
        Integer numValueOf = Integer.valueOf(i10);
        boolean z10 = true;
        if (map.containsKey(numValueOf)) {
            t1 t1VarO = o(i10);
            int i11 = bundle.getInt(t4.b.a("status", t1VarO.f26087c.f26074a));
            if (d0.c(t1VarO.f26087c.f26077d, i11)) {
                f26150g.a("Found stale update for session %s with status %d.", numValueOf, Integer.valueOf(t1VarO.f26087c.f26077d));
                s1 s1Var = t1VarO.f26087c;
                String str = s1Var.f26074a;
                int i12 = s1Var.f26077d;
                if (i12 == 4) {
                    this.f26152b.zza().a(i10, str);
                } else if (i12 == 5) {
                    this.f26152b.zza().Q(i10);
                } else if (i12 == 6) {
                    this.f26152b.zza().f(Arrays.asList(str));
                }
            } else {
                t1VarO.f26087c.f26077d = i11;
                if (d0.d(i11)) {
                    l(i10);
                    this.f26153c.c(t1VarO.f26087c.f26074a);
                } else {
                    for (u1 u1Var : t1VarO.f26087c.f26079f) {
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList(t4.b.b("chunk_intents", t1VarO.f26087c.f26074a, u1Var.f26103a));
                        if (parcelableArrayList != null) {
                            for (int i13 = 0; i13 < parcelableArrayList.size(); i13++) {
                                if (parcelableArrayList.get(i13) != null && ((Intent) parcelableArrayList.get(i13)).getData() != null) {
                                    u1Var.f26106d.get(i13).f26052a = true;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            String strQ = q(bundle);
            long j10 = bundle.getLong(t4.b.a("pack_version", strQ));
            String string = bundle.getString(t4.b.a("pack_version_tag", strQ), BuildConfig.FLAVOR);
            int i14 = bundle.getInt(t4.b.a("status", strQ));
            long j11 = bundle.getLong(t4.b.a("total_bytes_to_download", strQ));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(t4.b.a("slice_ids", strQ));
            ArrayList arrayList = new ArrayList();
            for (String str2 : r(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(t4.b.b("chunk_intents", strQ, str2));
                ArrayList arrayList2 = new ArrayList();
                Iterator it = r(parcelableArrayList2).iterator();
                while (it.hasNext()) {
                    if (((Intent) it.next()) == null) {
                        z10 = false;
                    }
                    arrayList2.add(new q1(z10));
                    z10 = true;
                }
                String string2 = bundle.getString(t4.b.b("uncompressed_hash_sha256", strQ, str2));
                long j12 = bundle.getLong(t4.b.b("uncompressed_size", strQ, str2));
                int i15 = bundle.getInt(t4.b.b("patch_format", strQ, str2), 0);
                arrayList.add(i15 != 0 ? new u1(str2, string2, j12, arrayList2, 0, i15) : new u1(str2, string2, j12, arrayList2, bundle.getInt(t4.b.b("compression_format", strQ, str2), 0), 0));
                z10 = true;
            }
            this.f26155e.put(Integer.valueOf(i10), new t1(i10, bundle.getInt("app_version_code"), new s1(strQ, j10, i14, j11, arrayList, string)));
        }
        return Boolean.TRUE;
    }

    final /* synthetic */ Object c(String str, int i10, long j10) {
        t1 t1Var = s(Arrays.asList(str)).get(str);
        if (t1Var == null || d0.d(t1Var.f26087c.f26077d)) {
            f26150g.b(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.f26151a.d(str, i10, j10);
        t1Var.f26087c.f26077d = 4;
        return null;
    }

    final /* synthetic */ Object d(int i10, int i11) {
        o(i10).f26087c.f26077d = 5;
        return null;
    }

    final /* synthetic */ Object e(int i10) {
        t1 t1VarO = o(i10);
        if (!d0.d(t1VarO.f26087c.f26077d)) {
            throw new d1(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i10)), i10);
        }
        e0 e0Var = this.f26151a;
        s1 s1Var = t1VarO.f26087c;
        e0Var.d(s1Var.f26074a, t1VarO.f26086b, s1Var.f26075b);
        s1 s1Var2 = t1VarO.f26087c;
        int i11 = s1Var2.f26077d;
        if (i11 != 5 && i11 != 6) {
            return null;
        }
        this.f26151a.e(s1Var2.f26074a, t1VarO.f26086b, s1Var2.f26075b);
        return null;
    }

    final Map<Integer, t1> f() {
        return this.f26155e;
    }

    final /* synthetic */ Map g(List list) {
        HashMap map = new HashMap();
        for (t1 t1Var : this.f26155e.values()) {
            String str = t1Var.f26087c.f26074a;
            if (list.contains(str)) {
                t1 t1Var2 = (t1) map.get(str);
                if ((t1Var2 == null ? -1 : t1Var2.f26085a) < t1Var.f26085a) {
                    map.put(str, t1Var);
                }
            }
        }
        return map;
    }

    final void h() {
        this.f26156f.lock();
    }

    final void i(final String str, final int i10, final long j10) {
        p(new v1() { // from class: com.google.android.play.core.assetpacks.o1
            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                this.f26022a.c(str, i10, j10);
                return null;
            }
        });
    }

    final void j() {
        this.f26156f.unlock();
    }

    final void k(final int i10, int i11) {
        final int i12 = 5;
        p(new v1(i10, i12) { // from class: com.google.android.play.core.assetpacks.l1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ int f25975b;

            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                this.f25974a.d(this.f25975b, 5);
                return null;
            }
        });
    }

    final void l(final int i10) {
        p(new v1() { // from class: com.google.android.play.core.assetpacks.k1
            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                this.f25963a.e(i10);
                return null;
            }
        });
    }

    final boolean m(final Bundle bundle) {
        return ((Boolean) p(new v1() { // from class: com.google.android.play.core.assetpacks.m1
            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                return this.f25995a.a(bundle);
            }
        })).booleanValue();
    }

    final boolean n(final Bundle bundle) {
        return ((Boolean) p(new v1() { // from class: com.google.android.play.core.assetpacks.n1
            @Override // com.google.android.play.core.assetpacks.v1
            public final Object zza() {
                return this.f26010a.b(bundle);
            }
        })).booleanValue();
    }
}
