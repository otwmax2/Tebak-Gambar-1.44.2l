package j5;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzff;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile int f30729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f30730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f30731c;

    public s(b5.g gVar) {
        this(gVar.l(), new f(gVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f() {
        return this.f30729a > 0 && !this.f30731c;
    }

    public final void a() {
        this.f30730b.c();
    }

    public final void b(zzff zzffVar) {
        if (zzffVar == null) {
            return;
        }
        long jA4 = zzffVar.a4();
        if (jA4 <= 0) {
            jA4 = 3600;
        }
        long jB4 = zzffVar.b4() + (jA4 * 1000);
        f fVar = this.f30730b;
        fVar.f30694b = jB4;
        fVar.f30695c = -1L;
        if (f()) {
            this.f30730b.a();
        }
    }

    @VisibleForTesting
    private s(Context context, f fVar) {
        this.f30731c = false;
        this.f30729a = 0;
        this.f30730b = fVar;
        BackgroundDetector.c((Application) context.getApplicationContext());
        BackgroundDetector.b().a(new r(this));
    }
}
