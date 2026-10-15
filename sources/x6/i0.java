package x6;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import com.google.firebase.sessions.SessionLifecycleService;

/* JADX INFO: compiled from: SessionLifecycleServiceBinder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i0 implements h0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f36424c = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b5.g f36425b;

    /* JADX INFO: compiled from: SessionLifecycleServiceBinder.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public i0(b5.g gVar) {
        t9.m.e(gVar, "firebaseApp");
        this.f36425b = gVar;
    }

    @Override // x6.h0
    public void a(Messenger messenger, ServiceConnection serviceConnection) {
        t9.m.e(messenger, "callback");
        t9.m.e(serviceConnection, "serviceConnection");
        Context applicationContext = this.f36425b.l().getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) SessionLifecycleService.class);
        Log.d("LifecycleServiceBinder", "Binding service to application.");
        intent.setAction(String.valueOf(Process.myPid()));
        intent.putExtra("ClientCallbackMessenger", messenger);
        applicationContext.bindService(intent, serviceConnection, 65);
    }
}
