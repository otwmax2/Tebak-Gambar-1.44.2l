package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgqi;
import com.google.android.gms.internal.ads.zzgqm;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgqm<MessageType extends zzgqm<MessageType, BuilderType>, BuilderType extends zzgqi<MessageType, BuilderType>> extends zzgon<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzgth zzc = zzgth.c();

    protected static void A(Class cls, zzgqm zzgqmVar) {
        zzgqmVar.z();
        zzb.put(cls, zzgqmVar);
    }

    private static zzgqm G(zzgqm zzgqmVar) throws zzgqy {
        if (zzgqmVar == null || zzgqmVar.C()) {
            return zzgqmVar;
        }
        zzgqy zzgqyVarA = new zzgtf(zzgqmVar).a();
        zzgqyVarA.h(zzgqmVar);
        throw zzgqyVarA;
    }

    private static zzgqm H(zzgqm zzgqmVar, byte[] bArr, int i10, int i11, zzgpy zzgpyVar) throws zzgqy {
        zzgqm zzgqmVarK = zzgqmVar.k();
        try {
            zzgsp zzgspVarB = zzgse.a().b(zzgqmVarK.getClass());
            zzgspVarB.h(zzgqmVarK, bArr, 0, i11, new zzgoq(zzgpyVar));
            zzgspVarB.e(zzgqmVarK);
            return zzgqmVarK;
        } catch (zzgqy e10) {
            e = e10;
            if (e.l()) {
                e = new zzgqy(e);
            }
            e.h(zzgqmVarK);
            throw e;
        } catch (zzgtf e11) {
            zzgqy zzgqyVarA = e11.a();
            zzgqyVarA.h(zzgqmVarK);
            throw zzgqyVarA;
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzgqy) {
                throw ((zzgqy) e12.getCause());
            }
            zzgqy zzgqyVar = new zzgqy(e12);
            zzgqyVar.h(zzgqmVarK);
            throw zzgqyVar;
        } catch (IndexOutOfBoundsException unused) {
            zzgqy zzgqyVarJ = zzgqy.j();
            zzgqyVarJ.h(zzgqmVarK);
            throw zzgqyVarJ;
        }
    }

    private final int g(zzgsp zzgspVar) {
        if (zzgspVar != null) {
            return zzgspVar.a(this);
        }
        return zzgse.a().b(getClass()).a(this);
    }

    static zzgqm j(Class cls) {
        Map map = zzb;
        zzgqm zzgqmVar = (zzgqm) map.get(cls);
        if (zzgqmVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgqmVar = (zzgqm) map.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzgqmVar == null) {
            zzgqmVar = (zzgqm) ((zzgqm) zzgtq.o(cls)).F(6, null, null);
            if (zzgqmVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzgqmVar);
        }
        return zzgqmVar;
    }

    protected static zzgqm l(zzgqm zzgqmVar, zzgpe zzgpeVar) throws zzgqy {
        zzgpy zzgpyVar = zzgpy.f19437c;
        zzgpm zzgpmVarV = zzgpeVar.v();
        zzgqm zzgqmVarK = zzgqmVar.k();
        try {
            zzgsp zzgspVarB = zzgse.a().b(zzgqmVarK.getClass());
            zzgspVarB.i(zzgqmVarK, zzgpn.S(zzgpmVarV), zzgpyVar);
            zzgspVarB.e(zzgqmVarK);
            try {
                zzgpmVarV.B(0);
                G(zzgqmVarK);
                G(zzgqmVarK);
                return zzgqmVarK;
            } catch (zzgqy e10) {
                e10.h(zzgqmVarK);
                throw e10;
            }
        } catch (zzgqy e11) {
            e = e11;
            if (e.l()) {
                e = new zzgqy(e);
            }
            e.h(zzgqmVarK);
            throw e;
        } catch (zzgtf e12) {
            zzgqy zzgqyVarA = e12.a();
            zzgqyVarA.h(zzgqmVarK);
            throw zzgqyVarA;
        } catch (IOException e13) {
            if (e13.getCause() instanceof zzgqy) {
                throw ((zzgqy) e13.getCause());
            }
            zzgqy zzgqyVar = new zzgqy(e13);
            zzgqyVar.h(zzgqmVarK);
            throw zzgqyVar;
        } catch (RuntimeException e14) {
            if (e14.getCause() instanceof zzgqy) {
                throw ((zzgqy) e14.getCause());
            }
            throw e14;
        }
    }

    protected static zzgqm m(zzgqm zzgqmVar, byte[] bArr) throws zzgqy {
        zzgqm zzgqmVarH = H(zzgqmVar, bArr, 0, bArr.length, zzgpy.f19437c);
        G(zzgqmVarH);
        return zzgqmVarH;
    }

    protected static zzgqm n(zzgqm zzgqmVar, zzgpe zzgpeVar, zzgpy zzgpyVar) throws zzgqy {
        zzgpm zzgpmVarV = zzgpeVar.v();
        zzgqm zzgqmVarK = zzgqmVar.k();
        try {
            zzgsp zzgspVarB = zzgse.a().b(zzgqmVarK.getClass());
            zzgspVarB.i(zzgqmVarK, zzgpn.S(zzgpmVarV), zzgpyVar);
            zzgspVarB.e(zzgqmVarK);
            try {
                zzgpmVarV.B(0);
                G(zzgqmVarK);
                return zzgqmVarK;
            } catch (zzgqy e10) {
                e10.h(zzgqmVarK);
                throw e10;
            }
        } catch (zzgqy e11) {
            e = e11;
            if (e.l()) {
                e = new zzgqy(e);
            }
            e.h(zzgqmVarK);
            throw e;
        } catch (zzgtf e12) {
            zzgqy zzgqyVarA = e12.a();
            zzgqyVarA.h(zzgqmVarK);
            throw zzgqyVarA;
        } catch (IOException e13) {
            if (e13.getCause() instanceof zzgqy) {
                throw ((zzgqy) e13.getCause());
            }
            zzgqy zzgqyVar = new zzgqy(e13);
            zzgqyVar.h(zzgqmVarK);
            throw zzgqyVar;
        } catch (RuntimeException e14) {
            if (e14.getCause() instanceof zzgqy) {
                throw ((zzgqy) e14.getCause());
            }
            throw e14;
        }
    }

    protected static zzgqm o(zzgqm zzgqmVar, InputStream inputStream, zzgpy zzgpyVar) throws zzgqy {
        zzgpm zzgpmVarG = zzgpm.g(inputStream, 4096);
        zzgqm zzgqmVarK = zzgqmVar.k();
        try {
            zzgsp zzgspVarB = zzgse.a().b(zzgqmVarK.getClass());
            zzgspVarB.i(zzgqmVarK, zzgpn.S(zzgpmVarG), zzgpyVar);
            zzgspVarB.e(zzgqmVarK);
            G(zzgqmVarK);
            return zzgqmVarK;
        } catch (zzgqy e10) {
            e = e10;
            if (e.l()) {
                e = new zzgqy(e);
            }
            e.h(zzgqmVarK);
            throw e;
        } catch (zzgtf e11) {
            zzgqy zzgqyVarA = e11.a();
            zzgqyVarA.h(zzgqmVarK);
            throw zzgqyVarA;
        } catch (IOException e12) {
            if (e12.getCause() instanceof zzgqy) {
                throw ((zzgqy) e12.getCause());
            }
            zzgqy zzgqyVar = new zzgqy(e12);
            zzgqyVar.h(zzgqmVarK);
            throw zzgqyVar;
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof zzgqy) {
                throw ((zzgqy) e13.getCause());
            }
            throw e13;
        }
    }

    protected static zzgqm p(zzgqm zzgqmVar, byte[] bArr, zzgpy zzgpyVar) throws zzgqy {
        zzgqm zzgqmVarH = H(zzgqmVar, bArr, 0, bArr.length, zzgpyVar);
        G(zzgqmVarH);
        return zzgqmVarH;
    }

    protected static zzgqr q() {
        return zzgqn.i();
    }

    protected static zzgqr r(zzgqr zzgqrVar) {
        int size = zzgqrVar.size();
        return zzgqrVar.K(size == 0 ? 10 : size + size);
    }

    protected static zzgqu s() {
        return zzgrl.i();
    }

    protected static zzgqv u() {
        return zzgsf.g();
    }

    protected static zzgqv v(zzgqv zzgqvVar) {
        int size = zzgqvVar.size();
        return zzgqvVar.K(size == 0 ? 10 : size + size);
    }

    static Object w(Method method, Object obj, Object... objArr) {
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

    protected static Object x(zzgrw zzgrwVar, String str, Object[] objArr) {
        return new zzgsg(zzgrwVar, str, objArr);
    }

    final void B(int i10) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean C() {
        byte bByteValue = ((Byte) F(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zD = zzgse.a().b(getClass()).d(this);
        F(2, true != zD ? null : this, null);
        return zD;
    }

    final boolean D() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    final int E() {
        return zzgse.a().b(getClass()).c(this);
    }

    protected abstract Object F(int i10, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final int U() {
        int iG;
        if (D()) {
            iG = g(null);
            if (iG < 0) {
                throw new IllegalStateException("serialized size must be non-negative, was " + iG);
            }
        } else {
            iG = this.zzd & Integer.MAX_VALUE;
            if (iG == Integer.MAX_VALUE) {
                iG = g(null);
                if (iG < 0) {
                    throw new IllegalStateException("serialized size must be non-negative, was " + iG);
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iG;
            }
        }
        return iG;
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final /* synthetic */ zzgrv a() {
        return (zzgqi) F(5, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final void b(zzgpt zzgptVar) throws IOException {
        zzgse.a().b(getClass()).j(this, zzgpu.l(zzgptVar));
    }

    @Override // com.google.android.gms.internal.ads.zzgon
    final int c(zzgsp zzgspVar) {
        if (D()) {
            int iG = g(zzgspVar);
            if (iG >= 0) {
                return iG;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iG);
        }
        int i10 = this.zzd & Integer.MAX_VALUE;
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        int iG2 = g(zzgspVar);
        if (iG2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iG2;
            return iG2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iG2);
    }

    @Override // com.google.android.gms.internal.ads.zzgrx
    public final /* synthetic */ zzgrw d1() {
        return (zzgqm) F(6, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgse.a().b(getClass()).g(this, (zzgqm) obj);
    }

    protected final zzgqi h() {
        return (zzgqi) F(5, null, null);
    }

    public final int hashCode() {
        if (D()) {
            return E();
        }
        int i10 = this.zza;
        if (i10 != 0) {
            return i10;
        }
        int iE = E();
        this.zza = iE;
        return iE;
    }

    public final zzgqi i() {
        zzgqi zzgqiVar = (zzgqi) F(5, null, null);
        zzgqiVar.i(this);
        return zzgqiVar;
    }

    final zzgqm k() {
        return (zzgqm) F(4, null, null);
    }

    public final String toString() {
        return zzgry.a(this, super.toString());
    }

    protected final void y() {
        zzgse.a().b(getClass()).e(this);
        z();
    }

    final void z() {
        this.zzd &= Integer.MAX_VALUE;
    }
}
