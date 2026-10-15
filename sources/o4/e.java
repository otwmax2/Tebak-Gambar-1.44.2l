package o4;

/* JADX INFO: compiled from: CutCornerTreatment.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f32972a = -1.0f;

    @Override // o4.d
    public void a(m mVar, float f10, float f11, float f12) {
        mVar.o(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        double dSin = Math.sin(Math.toRadians(f10));
        double d10 = f12;
        Double.isNaN(d10);
        double d11 = f11;
        Double.isNaN(d11);
        double dSin2 = Math.sin(Math.toRadians(90.0f - f10));
        Double.isNaN(d10);
        Double.isNaN(d11);
        mVar.m((float) (dSin * d10 * d11), (float) (dSin2 * d10 * d11));
    }
}
