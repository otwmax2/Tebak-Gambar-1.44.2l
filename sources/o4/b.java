package o4;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: AdjustedCornerSize.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f32971b;

    public b(float f10, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f32970a;
            f10 += ((b) cVar).f32971b;
        }
        this.f32970a = cVar;
        this.f32971b = f10;
    }

    @Override // o4.c
    public float a(RectF rectF) {
        return Math.max(0.0f, this.f32970a.a(rectF) + this.f32971b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f32970a.equals(bVar.f32970a) && this.f32971b == bVar.f32971b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32970a, Float.valueOf(this.f32971b)});
    }
}
