package kotlinx.coroutines.internal;

import da.o0;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f implements o0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final k9.g f31729o;

    public f(k9.g gVar) {
        this.f31729o = gVar;
    }

    @Override // da.o0
    public k9.g a() {
        return this.f31729o;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + a() + ')';
    }
}
