package u;

import android.view.View;
import q.f;

/* JADX INFO: compiled from: ViewTimeCycle.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class e extends f {

    /* JADX INFO: compiled from: ViewTimeCycle.java */
    public static class a extends e {
        @Override // u.e
        public boolean b(View view, float f10, long j10, q.c cVar) {
            return this.f33740h;
        }

        public boolean c(View view, q.c cVar, float f10, long j10, double d10, double d11) {
            view.setRotation(a(f10, j10, view, cVar) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
            return this.f33740h;
        }
    }

    public float a(float f10, long j10, View view, q.c cVar) {
        this.f33733a.c(f10, this.f33739g);
        float[] fArr = this.f33739g;
        float f11 = fArr[1];
        if (f11 == 0.0f) {
            this.f33740h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f33742j)) {
            throw null;
        }
        long j11 = j10 - this.f33741i;
        double d10 = this.f33742j;
        double d11 = j11;
        Double.isNaN(d11);
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        this.f33742j = (float) ((d10 + ((d11 * 1.0E-9d) * d12)) % 1.0d);
        throw null;
    }

    public abstract boolean b(View view, float f10, long j10, q.c cVar);
}
