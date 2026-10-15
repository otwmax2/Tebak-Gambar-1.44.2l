package kotlinx.coroutines.internal;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public class p extends r {
    public final boolean C() {
        return r() == this;
    }

    public final Void D() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    @Override // kotlinx.coroutines.internal.r
    public boolean w() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.r
    public /* bridge */ /* synthetic */ boolean x() {
        return ((Boolean) D()).booleanValue();
    }
}
