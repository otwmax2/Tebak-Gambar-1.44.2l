package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzeo;
import com.google.android.gms.internal.auth.zzeq;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzeq<MessageType extends zzeq<MessageType, BuilderType>, BuilderType extends zzeo<MessageType, BuilderType>> extends zzdm<MessageType, BuilderType> {
    private static final Map<Object, zzeq<?, ?>> zzb = new ConcurrentHashMap();
    protected zzgq zzc = zzgq.a();

    static <T extends zzeq> T a(Class<T> cls) {
        Map<Object, zzeq<?, ?>> map = zzb;
        zzeq<?, ?> zzeqVar = map.get(cls);
        if (zzeqVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzeqVar = map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzeqVar == null) {
            zzeqVar = (zzeq) ((zzeq) zzgz.e(cls)).k(6, null, null);
            if (zzeqVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzeqVar);
        }
        return zzeqVar;
    }

    protected static <T extends zzeq<T, ?>> T c(T t10, byte[] bArr) throws zzew {
        boolean zC = false;
        T t11 = (T) d(t10, bArr, 0, bArr.length, zzeg.a());
        if (t11 != null) {
            byte bByteValue = ((Byte) t11.k(1, null, null)).byteValue();
            if (bByteValue == 1) {
                zC = true;
            } else if (bByteValue != 0) {
                zC = zzfy.a().b(t11.getClass()).c(t11);
                t11.k(2, true != zC ? null : t11, null);
            }
            if (!zC) {
                zzew zzewVar = new zzew(new zzgo(t11).getMessage());
                zzewVar.e(t11);
                throw zzewVar;
            }
        }
        return t11;
    }

    static <T extends zzeq<T, ?>> T d(T t10, byte[] bArr, int i10, int i11, zzeg zzegVar) throws zzew {
        T t11 = (T) t10.k(4, null, null);
        try {
            zzgb zzgbVarB = zzfy.a().b(t11.getClass());
            zzgbVarB.g(t11, bArr, 0, i11, new zzdp(zzegVar));
            zzgbVarB.b(t11);
            if (t11.zza == 0) {
                return t11;
            }
            throw new RuntimeException();
        } catch (zzew e10) {
            e10.e(t11);
            throw e10;
        } catch (IOException e11) {
            if (e11.getCause() instanceof zzew) {
                throw ((zzew) e11.getCause());
            }
            zzew zzewVar = new zzew(e11);
            zzewVar.e(t11);
            throw zzewVar;
        } catch (IndexOutOfBoundsException unused) {
            zzew zzewVarF = zzew.f();
            zzewVarF.e(t11);
            throw zzewVarF;
        }
    }

    protected static <E> zzeu<E> g() {
        return zzfz.g();
    }

    static Object h(Method method, Object obj, Object... objArr) {
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

    protected static Object i(zzfq zzfqVar, String str, Object[] objArr) {
        return new zzga(zzfqVar, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", objArr);
    }

    protected static <T extends zzeq> void j(Class<T> cls, T t10) {
        zzb.put(cls, t10);
    }

    @Override // com.google.android.gms.internal.auth.zzfq
    public final /* bridge */ /* synthetic */ zzfp b() {
        zzeo zzeoVar = (zzeo) k(5, null, null);
        zzeoVar.h(this);
        return zzeoVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzfy.a().b(getClass()).f(this, (zzeq) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.zzfr
    public final /* bridge */ /* synthetic */ zzfq f() {
        return (zzeq) k(6, null, null);
    }

    public final int hashCode() {
        int i10 = this.zza;
        if (i10 != 0) {
            return i10;
        }
        int iA = zzfy.a().b(getClass()).a(this);
        this.zza = iA;
        return iA;
    }

    protected abstract Object k(int i10, Object obj, Object obj2);

    public final String toString() {
        return zzfs.a(this, super.toString());
    }
}
