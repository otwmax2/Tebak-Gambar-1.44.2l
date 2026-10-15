package androidx.lifecycle;

import a1.c;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Map;

/* JADX INFO: compiled from: SavedStateHandleSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements c.InterfaceC0003c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a1.c f3502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f3504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h9.h f3505d;

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    static final class a extends t9.n implements s9.a<c0> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ m0 f3506o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m0 m0Var) {
            super(0);
            this.f3506o = m0Var;
        }

        @Override // s9.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final c0 invoke() {
            return a0.e(this.f3506o);
        }
    }

    public b0(a1.c cVar, m0 m0Var) {
        t9.m.e(cVar, "savedStateRegistry");
        t9.m.e(m0Var, "viewModelStoreOwner");
        this.f3502a = cVar;
        this.f3505d = h9.j.a(new a(m0Var));
    }

    private final c0 c() {
        return (c0) this.f3505d.getValue();
    }

    @Override // a1.c.InterfaceC0003c
    public Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f3504c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry<String, z> entry : c().j().entrySet()) {
            String key = entry.getKey();
            Bundle bundleA = entry.getValue().d().a();
            if (!t9.m.a(bundleA, Bundle.EMPTY)) {
                bundle.putBundle(key, bundleA);
            }
        }
        this.f3503b = false;
        return bundle;
    }

    public final Bundle b(String str) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        d();
        Bundle bundle = this.f3504c;
        Bundle bundle2 = bundle != null ? bundle.getBundle(str) : null;
        Bundle bundle3 = this.f3504c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f3504c;
        if (bundle4 != null && bundle4.isEmpty()) {
            this.f3504c = null;
        }
        return bundle2;
    }

    public final void d() {
        if (this.f3503b) {
            return;
        }
        this.f3504c = this.f3502a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        this.f3503b = true;
        c();
    }
}
