package g1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* JADX INFO: compiled from: PathProperty.java */
/* JADX INFO: loaded from: classes.dex */
class h<T> extends Property<T, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Property<T, PointF> f29703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PathMeasure f29704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f29705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f29706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PointF f29707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f29708f;

    h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f29706d = new float[2];
        this.f29707e = new PointF();
        this.f29703a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f29704b = pathMeasure;
        this.f29705c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t10) {
        return Float.valueOf(this.f29708f);
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t10, Float f10) {
        this.f29708f = f10.floatValue();
        this.f29704b.getPosTan(this.f29705c * f10.floatValue(), this.f29706d, null);
        PointF pointF = this.f29707e;
        float[] fArr = this.f29706d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f29703a.set(t10, pointF);
    }
}
