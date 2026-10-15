package v4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f extends b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ m f35809p;

    f(m mVar) {
        this.f35809p = mVar;
    }

    @Override // v4.b
    public final void a() {
        if (this.f35809p.f35829n != null) {
            this.f35809p.f35817b.d("Unbind from service.", new Object[0]);
            this.f35809p.f35816a.unbindService(this.f35809p.f35828m);
            this.f35809p.f35822g = false;
            this.f35809p.f35829n = null;
            this.f35809p.f35828m = null;
        }
        this.f35809p.u();
    }
}
