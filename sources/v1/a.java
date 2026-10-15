package v1;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import k2.q;

/* JADX INFO: compiled from: BitmapRequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public class a<ModelType, TranscodeType> extends e<ModelType, g2.g, Bitmap, TranscodeType> {
    private final c2.c R;
    private k2.f S;
    private z1.a T;
    private z1.e<InputStream, Bitmap> U;
    private z1.e<ParcelFileDescriptor, Bitmap> V;

    a(s2.f<ModelType, g2.g, Bitmap, TranscodeType> fVar, Class<TranscodeType> cls, e<ModelType, ?, ?, ?> eVar) {
        super(fVar, cls, eVar);
        this.S = k2.f.f31315c;
        c2.c cVarL = eVar.f35715q.l();
        this.R = cVarL;
        z1.a aVarM = eVar.f35715q.m();
        this.T = aVarM;
        this.U = new q(cVarL, aVarM);
        this.V = new k2.h(cVarL, this.T);
    }

    @Override // v1.e
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> a(u2.d<TranscodeType> dVar) {
        super.a(dVar);
        return this;
    }

    public a<ModelType, TranscodeType> D() {
        return Q(this.f35715q.j());
    }

    @Override // v1.e
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> h() {
        return (a) super.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v1.e
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> i(z1.e<g2.g, Bitmap> eVar) {
        super.i(eVar);
        return this;
    }

    @Override // v1.e
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> j(b2.b bVar) {
        super.j(bVar);
        return this;
    }

    public a<ModelType, TranscodeType> H(int i10) {
        super.l(i10);
        return this;
    }

    public a<ModelType, TranscodeType> I() {
        return Q(this.f35715q.k());
    }

    public a<ModelType, TranscodeType> J(t2.f<? super ModelType, TranscodeType> fVar) {
        super.r(fVar);
        return this;
    }

    @Override // v1.e
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> u(int i10, int i11) {
        super.u(i10, i11);
        return this;
    }

    public a<ModelType, TranscodeType> M(int i10) {
        super.v(i10);
        return this;
    }

    @Override // v1.e
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> x(i iVar) {
        super.x(iVar);
        return this;
    }

    @Override // v1.e
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> y(z1.c cVar) {
        super.y(cVar);
        return this;
    }

    @Override // v1.e
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> z(boolean z10) {
        super.z(z10);
        return this;
    }

    public a<ModelType, TranscodeType> Q(k2.d... dVarArr) {
        super.B(dVarArr);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v1.e
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public a<ModelType, TranscodeType> B(z1.g<Bitmap>... gVarArr) {
        super.B(gVarArr);
        return this;
    }

    @Override // v1.e
    void b() {
        D();
    }

    @Override // v1.e
    void d() {
        I();
    }
}
