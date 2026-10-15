package g6;

import java.io.IOException;

/* JADX INFO: compiled from: ProtobufValueEncoderContext.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements d6.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f29930a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f29931b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d6.c f29932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f29933d;

    i(f fVar) {
        this.f29933d = fVar;
    }

    private void a() {
        if (this.f29930a) {
            throw new d6.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f29930a = true;
    }

    void b(d6.c cVar, boolean z10) {
        this.f29930a = false;
        this.f29932c = cVar;
        this.f29931b = z10;
    }

    @Override // d6.g
    public d6.g f(String str) throws IOException {
        a();
        this.f29933d.i(this.f29932c, str, this.f29931b);
        return this;
    }

    @Override // d6.g
    public d6.g g(boolean z10) throws IOException {
        a();
        this.f29933d.o(this.f29932c, z10, this.f29931b);
        return this;
    }
}
