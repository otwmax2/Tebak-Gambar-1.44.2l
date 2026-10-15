package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.drive.zzet;
import com.google.android.gms.internal.drive.zzfp;
import com.google.android.gms.internal.drive.zzir;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class DriveEventService extends Service implements ChangeListener, CompletionListener, zzd, zzi {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final GmsLogger f7771t = new GmsLogger("DriveEventService", BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f7772o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private CountDownLatch f7773p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    a f7774q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("this")
    boolean f7775r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @VisibleForTesting
    private int f7776s;

    @VisibleForTesting
    final class b extends zzet {
        private b() {
        }

        @Override // com.google.android.gms.internal.drive.zzes
        public final void D4(zzfp zzfpVar) throws RemoteException {
            synchronized (DriveEventService.this) {
                DriveEventService.this.j();
                a aVar = DriveEventService.this.f7774q;
                if (aVar != null) {
                    DriveEventService.this.f7774q.sendMessage(aVar.c(zzfpVar));
                } else {
                    DriveEventService.f7771t.c("DriveEventService", "Receiving event before initialize is completed.");
                }
            }
        }

        /* synthetic */ b(DriveEventService driveEventService, com.google.android.gms.drive.events.a aVar) {
            this();
        }
    }

    protected DriveEventService(String str) {
        this.f7775r = false;
        this.f7776s = -1;
        this.f7772o = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(zzfp zzfpVar) {
        DriveEvent driveEventV3 = zzfpVar.V3();
        try {
            int iO = driveEventV3.o();
            if (iO == 1) {
                a((ChangeEvent) driveEventV3);
                return;
            }
            if (iO == 2) {
                d((CompletionEvent) driveEventV3);
                return;
            }
            if (iO == 4) {
                c((zzb) driveEventV3);
            } else if (iO != 7) {
                f7771t.i("DriveEventService", "Unhandled event: %s", driveEventV3);
            } else {
                f7771t.i("DriveEventService", "Unhandled transfer state event in %s: %s", this.f7772o, (zzv) driveEventV3);
            }
        } catch (Exception e10) {
            f7771t.d("DriveEventService", String.format("Error handling event in %s", this.f7772o), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() throws SecurityException {
        int iE = e();
        if (iE == this.f7776s) {
            return;
        }
        if (!UidVerifier.a(this, iE)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.f7776s = iE;
    }

    @Override // com.google.android.gms.drive.events.ChangeListener
    public void a(ChangeEvent changeEvent) {
        f7771t.i("DriveEventService", "Unhandled change event in %s: %s", this.f7772o, changeEvent);
    }

    @Override // com.google.android.gms.drive.events.zzd
    @ShowFirstParty
    public final void c(zzb zzbVar) {
        f7771t.i("DriveEventService", "Unhandled changes available event in %s: %s", this.f7772o, zzbVar);
    }

    @Override // com.google.android.gms.drive.events.CompletionListener
    public void d(CompletionEvent completionEvent) {
        f7771t.i("DriveEventService", "Unhandled completion event in %s: %s", this.f7772o, completionEvent);
    }

    @VisibleForTesting
    protected int e() {
        return Binder.getCallingUid();
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        com.google.android.gms.drive.events.a aVar = null;
        if (!"com.google.android.gms.drive.events.HANDLE_EVENT".equals(intent.getAction())) {
            return null;
        }
        if (this.f7774q == null && !this.f7775r) {
            this.f7775r = true;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.f7773p = new CountDownLatch(1);
            new com.google.android.gms.drive.events.a(this, countDownLatch).start();
            try {
                if (!countDownLatch.await(5000L, TimeUnit.MILLISECONDS)) {
                    f7771t.c("DriveEventService", "Failed to synchronously initialize event handler.");
                }
            } catch (InterruptedException e10) {
                throw new RuntimeException("Unable to start event handler", e10);
            }
        }
        return new b(this, aVar).asBinder();
    }

    @Override // android.app.Service
    public synchronized void onDestroy() {
        a aVar = this.f7774q;
        if (aVar != null) {
            this.f7774q.sendMessage(aVar.d());
            this.f7774q = null;
            try {
                if (!this.f7773p.await(5000L, TimeUnit.MILLISECONDS)) {
                    f7771t.g("DriveEventService", "Failed to synchronously quit event handler. Will quit itself");
                }
            } catch (InterruptedException unused) {
            }
            this.f7773p = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }

    static final class a extends zzir {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<DriveEventService> f7777a;

        private a(DriveEventService driveEventService) {
            this.f7777a = new WeakReference<>(driveEventService);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Message c(zzfp zzfpVar) {
            return obtainMessage(1, zzfpVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Message d() {
            return obtainMessage(2);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 != 2) {
                    DriveEventService.f7771t.i("DriveEventService", "Unexpected message type: %s", Integer.valueOf(message.what));
                    return;
                } else {
                    getLooper().quit();
                    return;
                }
            }
            DriveEventService driveEventService = this.f7777a.get();
            if (driveEventService != null) {
                driveEventService.h((zzfp) message.obj);
            } else {
                getLooper().quit();
            }
        }

        /* synthetic */ a(DriveEventService driveEventService, com.google.android.gms.drive.events.a aVar) {
            this(driveEventService);
        }
    }

    protected DriveEventService() {
        this("DriveEventService");
    }
}
