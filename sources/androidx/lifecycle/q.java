package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: compiled from: LifecycleService.java */
/* JADX INFO: loaded from: classes.dex */
public class q extends Service implements n {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final f0 f3559o = new f0(this);

    @Override // androidx.lifecycle.n
    public j getLifecycle() {
        return this.f3559o.a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f3559o.b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f3559o.c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f3559o.d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i10) {
        this.f3559o.e();
        super.onStart(intent, i10);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        return super.onStartCommand(intent, i10, i11);
    }
}
