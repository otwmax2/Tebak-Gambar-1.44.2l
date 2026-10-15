package e5;

import android.content.Context;
import android.os.Bundle;
import b5.g;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.internal.f;
import e5.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public class b implements e5.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile e5.a f28951c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final AppMeasurementSdk f28952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final Map f28953b;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-api@@20.1.2 */
    class a implements a.InterfaceC0154a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f28954a;

        a(String str) {
            this.f28954a = str;
        }
    }

    b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.k(appMeasurementSdk);
        this.f28952a = appMeasurementSdk;
        this.f28953b = new ConcurrentHashMap();
    }

    @KeepForSdk
    public static e5.a h(g gVar, Context context, h6.d dVar) {
        Preconditions.k(gVar);
        Preconditions.k(context);
        Preconditions.k(dVar);
        Preconditions.k(context.getApplicationContext());
        if (f28951c == null) {
            synchronized (b.class) {
                if (f28951c == null) {
                    Bundle bundle = new Bundle(1);
                    if (gVar.w()) {
                        dVar.a(b5.b.class, new Executor() { // from class: e5.d
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new h6.b() { // from class: e5.c
                            @Override // h6.b
                            public final void a(h6.a aVar) {
                                b.i(aVar);
                            }
                        });
                        bundle.putBoolean("dataCollectionDefaultEnabled", gVar.v());
                    }
                    f28951c = new b(zzee.v(context, null, null, null, bundle).s());
                }
            }
        }
        return f28951c;
    }

    static /* synthetic */ void i(h6.a aVar) {
        boolean z10 = ((b5.b) aVar.a()).f4651a;
        synchronized (b.class) {
            ((b) Preconditions.k(f28951c)).f28952a.v(z10);
        }
    }

    private final boolean j(String str) {
        return (str.isEmpty() || !this.f28953b.containsKey(str) || this.f28953b.get(str) == null) ? false : true;
    }

    @Override // e5.a
    @KeepForSdk
    public Map<String, Object> a(boolean z10) {
        return this.f28952a.m(null, null, z10);
    }

    @Override // e5.a
    @KeepForSdk
    public void b(a.c cVar) {
        if (com.google.firebase.analytics.connector.internal.b.f(cVar)) {
            this.f28952a.r(com.google.firebase.analytics.connector.internal.b.a(cVar));
        }
    }

    @Override // e5.a
    @KeepForSdk
    public void c(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.b.i(str) && com.google.firebase.analytics.connector.internal.b.g(str2, bundle) && com.google.firebase.analytics.connector.internal.b.e(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.b.d(str, str2, bundle);
            this.f28952a.n(str, str2, bundle);
        }
    }

    @Override // e5.a
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.b.g(str2, bundle)) {
            this.f28952a.b(str, str2, bundle);
        }
    }

    @Override // e5.a
    @KeepForSdk
    public int d(String str) {
        return this.f28952a.l(str);
    }

    @Override // e5.a
    @KeepForSdk
    public List<a.c> e(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it = this.f28952a.g(str, str2).iterator();
        while (it.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.b.b(it.next()));
        }
        return arrayList;
    }

    @Override // e5.a
    @KeepForSdk
    public a.InterfaceC0154a f(String str, a.b bVar) {
        Preconditions.k(bVar);
        if (!com.google.firebase.analytics.connector.internal.b.i(str) || j(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f28952a;
        Object dVar = "fiam".equals(str) ? new com.google.firebase.analytics.connector.internal.d(appMeasurementSdk, bVar) : ("crash".equals(str) || "clx".equals(str)) ? new f(appMeasurementSdk, bVar) : null;
        if (dVar == null) {
            return null;
        }
        this.f28953b.put(str, dVar);
        return new a(str);
    }

    @Override // e5.a
    @KeepForSdk
    public void g(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.b.i(str) && com.google.firebase.analytics.connector.internal.b.j(str, str2)) {
            this.f28952a.u(str, str2, obj);
        }
    }
}
