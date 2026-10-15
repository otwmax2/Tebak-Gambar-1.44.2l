package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import v4.h0;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class s implements u3 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final v4.a f26065g = new v4.a("AssetPackServiceImpl");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Intent f26066h = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h1 f26068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p2 f26069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v4.m<v4.i0> f26070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private v4.m<v4.i0> f26071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f26072f = new AtomicBoolean();

    s(Context context, h1 h1Var, p2 p2Var) {
        this.f26067a = context.getPackageName();
        this.f26068b = h1Var;
        this.f26069c = p2Var;
        if (v4.r.b(context)) {
            Context contextA = v4.p.a(context);
            v4.a aVar = f26065g;
            Intent intent = f26066h;
            s4.j jVar = new v4.h() { // from class: s4.j
                @Override // v4.h
                public final Object a(IBinder iBinder) {
                    return h0.X0(iBinder);
                }
            };
            this.f26070d = new v4.m<>(contextA, aVar, "AssetPackService", intent, jVar, null);
            this.f26071e = new v4.m<>(v4.p.a(context), aVar, "AssetPackService-keepAlive", intent, jVar, null);
        }
        f26065g.a("AssetPackService initiated.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11002);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(1);
        arrayList2.add(2);
        bundle.putIntegerArrayList("supported_patch_formats", arrayList2);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle h(int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(SDKAnalyticsEvents.PARAMETER_SESSION_ID, i10);
        return bundle;
    }

    private static <T> y4.e<T> i() {
        f26065g.b("onError(%d)", -11);
        return y4.g.b(new a(-11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(int i10, String str, int i11) {
        if (this.f26070d == null) {
            throw new d1("The Play Store app is not installed or is an unofficial version.", i10);
        }
        f26065g.d("notifyModuleCompleted", new Object[0]);
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new g(this, pVar, i10, str, pVar, i11), pVar);
    }

    static /* bridge */ /* synthetic */ Bundle k(int i10, String str, String str2, int i11) {
        Bundle bundleX = x(i10, str);
        bundleX.putString("slice_id", str2);
        bundleX.putInt("chunk_number", i11);
        return bundleX;
    }

    static /* bridge */ /* synthetic */ Bundle n(Map map) {
        Bundle bundleG = g();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        bundleG.putParcelableArrayList("installed_asset_module", arrayList);
        return bundleG;
    }

    static /* bridge */ /* synthetic */ ArrayList t(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("module_name", str);
            arrayList.add(bundle);
        }
        return arrayList;
    }

    static /* bridge */ /* synthetic */ List u(s sVar, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AssetPackState next = c.c((Bundle) it.next(), sVar.f26068b, sVar.f26069c).a().values().iterator().next();
            if (next == null) {
                f26065g.b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (d0.a(next.d())) {
                arrayList.add(next.c());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle x(int i10, String str) {
        Bundle bundleH = h(i10);
        bundleH.putString("module_name", str);
        return bundleH;
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void Q(int i10) {
        if (this.f26070d == null) {
            throw new d1("The Play Store app is not installed or is an unofficial version.", i10);
        }
        f26065g.d("notifySessionFailed", new Object[0]);
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new h(this, pVar, i10, pVar), pVar);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void a(int i10, String str) {
        j(i10, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final y4.e<ParcelFileDescriptor> b(int i10, String str, String str2, int i11) {
        if (this.f26070d == null) {
            return i();
        }
        f26065g.d("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i11), Integer.valueOf(i10));
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new i(this, pVar, i10, str, str2, i11, pVar), pVar);
        return pVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final synchronized void c() {
        if (this.f26071e == null) {
            f26065g.e("Keep alive connection manager is not initialized.", new Object[0]);
            return;
        }
        v4.a aVar = f26065g;
        aVar.d("keepAlive", new Object[0]);
        if (!this.f26072f.compareAndSet(false, true)) {
            aVar.d("Service is already kept alive.", new Object[0]);
        } else {
            y4.p<?> pVar = new y4.p<>();
            this.f26071e.q(new j(this, pVar, pVar), pVar);
        }
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void d(int i10, String str, String str2, int i11) {
        if (this.f26070d == null) {
            throw new d1("The Play Store app is not installed or is an unofficial version.", i10);
        }
        f26065g.d("notifyChunkTransferred", new Object[0]);
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new f(this, pVar, i10, str, str2, i11, pVar), pVar);
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final y4.e<List<String>> e(Map<String, Long> map) {
        if (this.f26070d == null) {
            return i();
        }
        f26065g.d("syncPacks", new Object[0]);
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new e(this, pVar, map, pVar), pVar);
        return pVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.u3
    public final void f(List<String> list) {
        if (this.f26070d == null) {
            return;
        }
        f26065g.d("cancelDownloads(%s)", list);
        y4.p<?> pVar = new y4.p<>();
        this.f26070d.q(new d(this, pVar, list, pVar), pVar);
    }
}
