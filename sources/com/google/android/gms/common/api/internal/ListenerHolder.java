package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class ListenerHolder<L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f7032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile L f7033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile ListenerKey<L> f7034c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public static final class ListenerKey<L> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final L f7035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f7036b;

        @KeepForSdk
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f7035a == listenerKey.f7035a && this.f7036b.equals(listenerKey.f7036b);
        }

        @KeepForSdk
        public int hashCode() {
            return (System.identityHashCode(this.f7035a) * 31) + this.f7036b.hashCode();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @KeepForSdk
    public interface Notifier<L> {
        @KeepForSdk
        void a(L l10);

        @KeepForSdk
        void b();
    }

    @KeepForSdk
    public void a() {
        this.f7033b = null;
        this.f7034c = null;
    }

    @KeepForSdk
    public ListenerKey<L> b() {
        return this.f7034c;
    }

    @KeepForSdk
    public void c(final Notifier<? super L> notifier) {
        Preconditions.l(notifier, "Notifier must not be null");
        this.f7032a.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacb
            @Override // java.lang.Runnable
            public final void run() {
                this.f7234o.d(notifier);
            }
        });
    }

    final void d(Notifier<? super L> notifier) {
        L l10 = this.f7033b;
        if (l10 == null) {
            notifier.b();
            return;
        }
        try {
            notifier.a(l10);
        } catch (RuntimeException e10) {
            notifier.b();
            throw e10;
        }
    }
}
