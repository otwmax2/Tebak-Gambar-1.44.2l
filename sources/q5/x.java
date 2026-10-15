package q5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: DataCollectionArbiter.java */
/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f34037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b5.g f34038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f34039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TaskCompletionSource<Void> f34040d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f34041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f34042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Boolean f34043g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TaskCompletionSource<Void> f34044h;

    public x(b5.g gVar) {
        Object obj = new Object();
        this.f34039c = obj;
        this.f34040d = new TaskCompletionSource<>();
        this.f34041e = false;
        this.f34042f = false;
        this.f34044h = new TaskCompletionSource<>();
        Context contextL = gVar.l();
        this.f34038b = gVar;
        this.f34037a = i.q(contextL);
        Boolean boolB = b();
        this.f34043g = boolB == null ? a(contextL) : boolB;
        synchronized (obj) {
            if (d()) {
                this.f34040d.e(null);
                this.f34041e = true;
            }
        }
    }

    private Boolean a(Context context) {
        Boolean boolG = g(context);
        if (boolG == null) {
            this.f34042f = false;
            return null;
        }
        this.f34042f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(boolG));
    }

    private Boolean b() {
        if (!this.f34037a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f34042f = false;
        return Boolean.valueOf(this.f34037a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    private boolean e() {
        try {
            return this.f34038b.v();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private void f(boolean z10) {
        n5.g.f().b(String.format("Crashlytics automatic data collection %s by %s.", z10 ? "ENABLED" : "DISABLED", this.f34043g == null ? "global Firebase setting" : this.f34042f ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
    }

    private static Boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e10) {
            n5.g.f().e("Could not read data collection permission from manifest", e10);
            return null;
        }
    }

    public void c(boolean z10) {
        if (!z10) {
            throw new IllegalStateException("An invalid data collection token was used.");
        }
        this.f34044h.e(null);
    }

    public synchronized boolean d() {
        boolean zBooleanValue;
        Boolean bool = this.f34043g;
        zBooleanValue = bool != null ? bool.booleanValue() : e();
        f(zBooleanValue);
        return zBooleanValue;
    }

    public Task<Void> h() {
        Task<Void> taskA;
        synchronized (this.f34039c) {
            taskA = this.f34040d.a();
        }
        return taskA;
    }

    public Task<Void> i(Executor executor) {
        return q0.o(executor, this.f34044h.a(), h());
    }
}
