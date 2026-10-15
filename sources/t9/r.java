package t9;

import z9.f;

/* JADX INFO: compiled from: PropertyReference1.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class r extends v implements z9.f {
    public r(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // z9.f
    public f.a a() {
        return ((z9.f) l()).a();
    }

    @Override // t9.c
    protected z9.a e() {
        return z.e(this);
    }

    @Override // s9.l
    public Object invoke(Object obj) {
        return get(obj);
    }
}
