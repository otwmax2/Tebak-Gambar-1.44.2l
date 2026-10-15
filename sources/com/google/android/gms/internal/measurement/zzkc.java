package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjy;
import com.google.android.gms.internal.measurement.zzkc;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzkc<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zzjy<MessageType, BuilderType>> extends zzil<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    protected zzmm zzc = zzmm.c();
    protected int zzd = -1;

    static zzkc k(Class cls) {
        Map map = zza;
        zzkc zzkcVar = (zzkc) map.get(cls);
        if (zzkcVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkcVar = (zzkc) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzkcVar == null) {
            zzkcVar = (zzkc) ((zzkc) zzmv.j(cls)).t(6, null, null);
            if (zzkcVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzkcVar);
        }
        return zzkcVar;
    }

    protected static zzkh l() {
        return zzkd.i();
    }

    protected static zzki m() {
        return zzky.g();
    }

    protected static zzki n(zzki zzkiVar) {
        int size = zzkiVar.size();
        return zzkiVar.K(size == 0 ? 10 : size + size);
    }

    protected static zzkj o() {
        return zzls.g();
    }

    protected static zzkj p(zzkj zzkjVar) {
        int size = zzkjVar.size();
        return zzkjVar.K(size == 0 ? 10 : size + size);
    }

    static Object q(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object r(zzlj zzljVar, String str, Object[] objArr) {
        return new zzlt(zzljVar, str, objArr);
    }

    protected static void s(Class cls, zzkc zzkcVar) {
        zza.put(cls, zzkcVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final int M() {
        int i10 = this.zzd;
        if (i10 != -1) {
            return i10;
        }
        int iA = zzlr.a().b(getClass()).a(this);
        this.zzd = iA;
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.zzlk
    public final /* synthetic */ zzlj a() {
        return (zzkc) t(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final /* synthetic */ zzli b() {
        return (zzjy) t(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    final int c() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final void d(zzjj zzjjVar) throws IOException {
        zzlr.a().b(getClass()).i(this, zzjk.H(zzjjVar));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzlr.a().b(getClass()).g(this, (zzkc) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final /* synthetic */ zzli f() {
        zzjy zzjyVar = (zzjy) t(5, null, null);
        zzjyVar.m(this);
        return zzjyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzil
    final void g(int i10) {
        this.zzd = i10;
    }

    public final int hashCode() {
        int i10 = this.zzb;
        if (i10 != 0) {
            return i10;
        }
        int iC = zzlr.a().b(getClass()).c(this);
        this.zzb = iC;
        return iC;
    }

    protected final zzjy i() {
        return (zzjy) t(5, null, null);
    }

    public final zzjy j() {
        zzjy zzjyVar = (zzjy) t(5, null, null);
        zzjyVar.m(this);
        return zzjyVar;
    }

    protected abstract Object t(int i10, Object obj, Object obj2);

    public final String toString() {
        return zzll.a(this, super.toString());
    }
}
