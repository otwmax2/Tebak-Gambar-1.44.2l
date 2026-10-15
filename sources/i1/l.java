package i1;

import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import i1.u;

/* JADX INFO: compiled from: OneTimeWorkRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class l extends u {

    /* JADX INFO: compiled from: OneTimeWorkRequest.java */
    public static final class a extends u.a<a, l> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f30387c.f33781d = OverwritingInputMerger.class.getName();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // i1.u.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public l c() {
            if (this.f30385a && Build.VERSION.SDK_INT >= 23 && this.f30387c.f33787j.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            return new l(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // i1.u.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public a d() {
            return this;
        }
    }

    l(a aVar) {
        super(aVar.f30386b, aVar.f30387c, aVar.f30388d);
    }

    public static l d(Class<? extends ListenableWorker> cls) {
        return new a(cls).b();
    }
}
