package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import com.google.android.gms.internal.drive.zzkk.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzkk<MessageType extends zzkk<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzit<MessageType, BuilderType> {
    private static Map<Object, zzkk<?, ?>> zzrs = new ConcurrentHashMap();
    protected zzmy zzrq = zzmy.h();
    private int zzrr = -1;

    public static abstract class zza<MessageType extends zzkk<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zziu<MessageType, BuilderType> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final MessageType f22172o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        protected MessageType f22173p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f22174q = false;

        protected zza(MessageType messagetype) {
            this.f22172o = messagetype;
            this.f22173p = (MessageType) messagetype.i(zze.f22179d, null, null);
        }

        private static void k(MessageType messagetype, MessageType messagetype2) {
            zzmd.a().c(messagetype).g(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.drive.zzls
        public final /* synthetic */ zzlq a() {
            return this.f22172o;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.drive.zziu
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.f22172o.i(zze.f22180e, null, null);
            zzaVar.h((zzkk) G2());
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.drive.zziu
        /* JADX INFO: renamed from: i */
        public final /* synthetic */ zziu clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.drive.zziu
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public final BuilderType h(MessageType messagetype) {
            l();
            k(this.f22173p, messagetype);
            return this;
        }

        protected final void l() {
            if (this.f22174q) {
                MessageType messagetype = (MessageType) this.f22173p.i(zze.f22179d, null, null);
                k(messagetype, this.f22173p);
                this.f22173p = messagetype;
                this.f22174q = false;
            }
        }

        @Override // com.google.android.gms.internal.drive.zzlr
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public MessageType G2() {
            if (this.f22174q) {
                return this.f22173p;
            }
            this.f22173p.n();
            this.f22174q = true;
            return this.f22173p;
        }

        @Override // com.google.android.gms.internal.drive.zzlr
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public final MessageType n1() {
            MessageType messagetype = (MessageType) G2();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzmw(messagetype);
        }
    }

    public static class zzb<T extends zzkk<T, ?>> extends zziv<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T f22175b;

        public zzb(T t10) {
            this.f22175b = t10;
        }
    }

    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzkk<MessageType, BuilderType> implements zzls {
        protected zzkb<Object> zzrw = zzkb.p();

        final zzkb<Object> q() {
            if (this.zzrw.b()) {
                this.zzrw = (zzkb) this.zzrw.clone();
            }
            return this.zzrw;
        }
    }

    public static class zzd<ContainingType extends zzlq, Type> extends zzjv<ContainingType, Type> {
    }

    public enum zze {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f22176a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f22177b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f22178c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f22179d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f22180e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f22181f = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f22182g = 7;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f22184i = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f22185j = 2;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f22187l = 1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f22188m = 2;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ int[] f22183h = {1, 2, 3, 4, 5, 6, 7};

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final /* synthetic */ int[] f22186k = {1, 2};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final /* synthetic */ int[] f22189n = {1, 2};

        public static int[] a() {
            return (int[]) f22183h.clone();
        }
    }

    protected static Object j(zzlq zzlqVar, String str, Object[] objArr) {
        return new zzme(zzlqVar, str, objArr);
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

    protected static <T extends zzkk<?, ?>> void l(Class<T> cls, T t10) {
        zzrs.put(cls, t10);
    }

    protected static final <T extends zzkk<T, ?>> boolean m(T t10, boolean z10) {
        byte bByteValue = ((Byte) t10.i(zze.f22176a, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zH = zzmd.a().c(t10).h(t10);
        if (z10) {
            t10.i(zze.f22177b, zH ? t10 : null, null);
        }
        return zH;
    }

    static <T extends zzkk<?, ?>> T p(Class<T> cls) {
        zzkk<?, ?> zzkkVar = zzrs.get(cls);
        if (zzkkVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkkVar = zzrs.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (zzkkVar == null) {
            zzkkVar = (T) ((zzkk) zznd.x(cls)).i(zze.f22181f, null, null);
            if (zzkkVar == null) {
                throw new IllegalStateException();
            }
            zzrs.put(cls, zzkkVar);
        }
        return (T) zzkkVar;
    }

    @Override // com.google.android.gms.internal.drive.zzls
    public final /* synthetic */ zzlq a() {
        return (zzkk) i(zze.f22181f, null, null);
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final void d(zzjr zzjrVar) throws IOException {
        zzmd.a().b(getClass()).f(this, zzjt.h(zzjrVar));
    }

    @Override // com.google.android.gms.internal.drive.zzit
    final int e() {
        return this.zzrr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzkk) i(zze.f22181f, null, null)).getClass().isInstance(obj)) {
            return zzmd.a().c(this).c(this, (zzkk) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final int f() {
        if (this.zzrr == -1) {
            this.zzrr = zzmd.a().c(this).e(this);
        }
        return this.zzrr;
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final /* synthetic */ zzlr g() {
        zza zzaVar = (zza) i(zze.f22180e, null, null);
        zzaVar.h(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.drive.zzit
    final void h(int i10) {
        this.zzrr = i10;
    }

    public int hashCode() {
        int i10 = this.zzne;
        if (i10 != 0) {
            return i10;
        }
        int iD = zzmd.a().c(this).d(this);
        this.zzne = iD;
        return iD;
    }

    protected abstract Object i(int i10, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.drive.zzls
    public final boolean isInitialized() {
        return m(this, true);
    }

    protected final void n() {
        zzmd.a().c(this).b(this);
    }

    protected final <MessageType extends zzkk<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType o() {
        return (BuilderType) i(zze.f22180e, null, null);
    }

    public String toString() {
        return zzlt.a(this, super.toString());
    }
}
