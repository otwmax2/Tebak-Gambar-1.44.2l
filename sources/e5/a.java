package e5;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface a {

    /* JADX INFO: renamed from: e5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public interface InterfaceC0154a {
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public interface b {
        @KeepForSdk
        void a(int i10, Bundle bundle);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-measurement-connector@@19.0.0 */
    @KeepForSdk
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @KeepForSdk
        public String f28936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @KeepForSdk
        public String f28937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @KeepForSdk
        public Object f28938c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @KeepForSdk
        public String f28939d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @KeepForSdk
        public long f28940e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @KeepForSdk
        public String f28941f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @KeepForSdk
        public Bundle f28942g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @KeepForSdk
        public String f28943h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @KeepForSdk
        public Bundle f28944i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @KeepForSdk
        public long f28945j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @KeepForSdk
        public String f28946k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @KeepForSdk
        public Bundle f28947l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        @KeepForSdk
        public long f28948m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @KeepForSdk
        public boolean f28949n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @KeepForSdk
        public long f28950o;
    }

    @KeepForSdk
    Map<String, Object> a(boolean z10);

    @KeepForSdk
    void b(c cVar);

    @KeepForSdk
    void c(String str, String str2, Bundle bundle);

    @KeepForSdk
    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    @KeepForSdk
    int d(String str);

    @KeepForSdk
    List<c> e(String str, String str2);

    @KeepForSdk
    InterfaceC0154a f(String str, b bVar);

    @KeepForSdk
    void g(String str, String str2, Object obj);
}
