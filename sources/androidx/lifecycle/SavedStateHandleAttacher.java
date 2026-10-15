package androidx.lifecycle;

import androidx.lifecycle.j;
import com.facebook.share.internal.ShareConstants;

/* JADX INFO: compiled from: SavedStateHandleSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandleAttacher implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f3485a;

    public SavedStateHandleAttacher(b0 b0Var) {
        t9.m.e(b0Var, "provider");
        this.f3485a = b0Var;
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        t9.m.e(nVar, ShareConstants.FEED_SOURCE_PARAM);
        t9.m.e(bVar, "event");
        if (bVar == j.b.ON_CREATE) {
            nVar.getLifecycle().c(this);
            this.f3485a.d();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + bVar).toString());
        }
    }
}
