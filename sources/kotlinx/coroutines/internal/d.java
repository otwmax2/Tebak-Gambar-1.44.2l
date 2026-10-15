package kotlinx.coroutines.internal;

import java.util.Objects;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: ExceptionsConstructor.kt */
/* JADX INFO: loaded from: classes2.dex */
@IgnoreJRERequirement
final class d extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f31723a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f31724b = new a();

    /* JADX INFO: compiled from: ExceptionsConstructor.kt */
    public static final class a extends ClassValue<s9.l<? super Throwable, ? extends Throwable>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s9.l<Throwable, Throwable> computeValue(Class<?> cls) {
            Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            return j.b(cls);
        }
    }

    private d() {
    }

    @Override // kotlinx.coroutines.internal.g
    public s9.l<Throwable, Throwable> a(Class<? extends Throwable> cls) {
        return (s9.l) f31724b.get(cls);
    }
}
