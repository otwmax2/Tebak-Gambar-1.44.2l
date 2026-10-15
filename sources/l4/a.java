package l4;

import android.graphics.Typeface;

/* JADX INFO: compiled from: CancelableFontCallback.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Typeface f31967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0200a f31968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f31969c;

    /* JADX INFO: renamed from: l4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CancelableFontCallback.java */
    public interface InterfaceC0200a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0200a interfaceC0200a, Typeface typeface) {
        this.f31967a = typeface;
        this.f31968b = interfaceC0200a;
    }

    private void d(Typeface typeface) {
        if (this.f31969c) {
            return;
        }
        this.f31968b.a(typeface);
    }

    @Override // l4.f
    public void a(int i10) {
        d(this.f31967a);
    }

    @Override // l4.f
    public void b(Typeface typeface, boolean z10) {
        d(typeface);
    }

    public void c() {
        this.f31969c = true;
    }
}
