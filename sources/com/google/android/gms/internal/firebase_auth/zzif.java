package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;
import com.google.android.gms.internal.firebase_auth.zzif.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzif<MessageType extends zzif<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzgn<MessageType, BuilderType> {
    private static Map<Object, zzif<?, ?>> zzd = new ConcurrentHashMap();
    protected zzky zzb = zzky.a();
    private int zzc = -1;

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static abstract class zza<MessageType extends zzif<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzgm<MessageType, BuilderType> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final MessageType f22743o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected MessageType f22744p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        protected boolean f22745q = false;

        protected zza(MessageType messagetype) {
            this.f22743o = messagetype;
            this.f22744p = (MessageType) messagetype.i(zzf.f22750d, null, null);
        }

        private static void i(MessageType messagetype, MessageType messagetype2) {
            zzjz.a().c(messagetype).f(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzjp
        public final /* synthetic */ zzjn a() {
            return this.f22743o;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_auth.zzgm
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.f22743o.i(zzf.f22751e, null, null);
            zzaVar.g((zzif) c());
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzgm
        /* JADX INFO: renamed from: f */
        public final /* synthetic */ zzgm clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzgm
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public final BuilderType g(MessageType messagetype) {
            if (this.f22745q) {
                j();
                this.f22745q = false;
            }
            i(this.f22744p, messagetype);
            return this;
        }

        protected void j() {
            MessageType messagetype = (MessageType) this.f22744p.i(zzf.f22750d, null, null);
            i(messagetype, this.f22744p);
            this.f22744p = messagetype;
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzjq
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public MessageType c() {
            if (this.f22745q) {
                return this.f22744p;
            }
            MessageType messagetype = this.f22744p;
            zzjz.a().c(messagetype).d(messagetype);
            this.f22745q = true;
            return this.f22744p;
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzjq
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final MessageType e() {
            MessageType messagetype = (MessageType) c();
            if (messagetype.b()) {
                return messagetype;
            }
            throw new zzkx(messagetype);
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzif<MessageType, BuilderType> implements zzjp {
        protected zzhv<zze> zzc = zzhv.c();
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static class zzc<T extends zzif<T, ?>> extends zzgo<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T f22746b;

        public zzc(T t10) {
            this.f22746b = t10;
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public static class zzd<ContainingType extends zzjn, Type> extends zzhq<ContainingType, Type> {
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    static final class zze implements zzhx<zze> {
        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final zzjt D(zzjt zzjtVar, zzjt zzjtVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final zzlt a() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final boolean b() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final boolean d() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final zzjq v(zzjq zzjqVar, zzjn zzjnVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_auth.zzhx
        public final zzlm zzb() {
            throw new NoSuchMethodError();
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
    public enum zzf {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f22747a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f22748b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f22749c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f22750d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f22751e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f22752f = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f22753g = 7;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f22755i = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f22756j = 2;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f22758l = 1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f22759m = 2;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f22754h = {1, 2, 3, 4, 5, 6, 7};

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final /* synthetic */ int[] f22757k = {1, 2};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final /* synthetic */ int[] f22760n = {1, 2};

        public static int[] a() {
            return (int[]) f22754h.clone();
        }
    }

    static <T extends zzif<?, ?>> T h(Class<T> cls) {
        zzif<?, ?> zzifVar = zzd.get(cls);
        if (zzifVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzifVar = zzd.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzifVar == null) {
            zzifVar = (T) ((zzif) zzlf.c(cls)).i(zzf.f22752f, null, null);
            if (zzifVar == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzifVar);
        }
        return (T) zzifVar;
    }

    protected static Object j(zzjn zzjnVar, String str, Object[] objArr) {
        return new zzkb(zzjnVar, str, objArr);
    }

    static Object k(Method method, Object obj, Object... objArr) {
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

    protected static <T extends zzif<?, ?>> void l(Class<T> cls, T t10) {
        zzd.put(cls, t10);
    }

    protected static final <T extends zzif<T, ?>> boolean m(T t10, boolean z10) {
        byte bByteValue = ((Byte) t10.i(zzf.f22747a, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zB = zzjz.a().c(t10).b(t10);
        if (z10) {
            t10.i(zzf.f22748b, zB ? t10 : null, null);
        }
        return zB;
    }

    protected static zzim n() {
        return zzig.j();
    }

    protected static <E> zzio<E> o() {
        return zzkc.j();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjn
    public final int A() {
        if (this.zzc == -1) {
            this.zzc = zzjz.a().c(this).c(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjn
    public final /* synthetic */ zzjq R() {
        zza zzaVar = (zza) i(zzf.f22751e, null, null);
        zzaVar.g(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjp
    public final /* synthetic */ zzjn a() {
        return (zzif) i(zzf.f22752f, null, null);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjp
    public final boolean b() {
        return m(this, true);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjn
    public final void d(zzhm zzhmVar) throws IOException {
        zzjz.a().c(this).g(this, zzhp.M(zzhmVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzjz.a().c(this).e(this, (zzif) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgn
    final void f(int i10) {
        this.zzc = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgn
    final int g() {
        return this.zzc;
    }

    public int hashCode() {
        int i10 = this.zza;
        if (i10 != 0) {
            return i10;
        }
        int iA = zzjz.a().c(this).a(this);
        this.zza = iA;
        return iA;
    }

    protected abstract Object i(int i10, Object obj, Object obj2);

    public String toString() {
        return zzjs.a(this, super.toString());
    }
}
