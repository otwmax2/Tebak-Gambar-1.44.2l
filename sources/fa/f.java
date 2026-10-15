package fa;

import kotlinx.coroutines.internal.f0;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface f<E> extends s<E>, o<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f29631a = a.f29632a;

    /* JADX INFO: compiled from: Channel.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f29632a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final int f29633b = f0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private a() {
        }

        public final int a() {
            return f29633b;
        }
    }
}
