package x6;

import android.content.ServiceConnection;
import android.os.Messenger;

/* JADX INFO: compiled from: SessionLifecycleServiceBinder.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f36422a = a.f36423a;

    /* JADX INFO: compiled from: SessionLifecycleServiceBinder.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f36423a = new a();

        private a() {
        }

        public final h0 a() {
            Object objJ = b5.o.a(b5.c.f4652a).j(h0.class);
            t9.m.d(objJ, "Firebase.app[SessionLife…erviceBinder::class.java]");
            return (h0) objJ;
        }
    }

    void a(Messenger messenger, ServiceConnection serviceConnection);
}
