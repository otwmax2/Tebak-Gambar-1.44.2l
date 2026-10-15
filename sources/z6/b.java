package z6;

import android.content.Context;
import android.os.Bundle;
import h9.t;
import t9.m;
import z6.h;

/* JADX INFO: compiled from: LocalOverrideSettings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f37225b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bundle f37226a;

    /* JADX INFO: compiled from: LocalOverrideSettings.kt */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public b(Context context) {
        m.e(context, "context");
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.f37226a = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // z6.h
    public Boolean a() {
        if (this.f37226a.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.f37226a.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override // z6.h
    public Object b(k9.d<? super t> dVar) {
        return h.a.a(this, dVar);
    }

    @Override // z6.h
    public ca.a c() {
        if (this.f37226a.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return ca.a.e(ca.c.h(this.f37226a.getInt("firebase_sessions_sessions_restart_timeout"), ca.d.SECONDS));
        }
        return null;
    }

    @Override // z6.h
    public Double d() {
        if (this.f37226a.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.f37226a.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }
}
