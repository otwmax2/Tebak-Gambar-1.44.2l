package j5;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class r implements BackgroundDetector.BackgroundStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ s f30728a;

    r(s sVar) {
        this.f30728a = sVar;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void a(boolean z10) {
        if (z10) {
            this.f30728a.f30731c = true;
            this.f30728a.a();
        } else {
            this.f30728a.f30731c = false;
            if (this.f30728a.f()) {
                this.f30728a.f30730b.a();
            }
        }
    }
}
