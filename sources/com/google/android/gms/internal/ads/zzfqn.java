package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfqn implements Map, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private transient zzfqp f18610o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    private transient zzfqp f18611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    private transient zzfqf f18612q;

    zzfqn() {
    }

    public static zzfqn c(Map map) {
        Set setEntrySet = map.entrySet();
        zzfqm zzfqmVar = new zzfqm(setEntrySet instanceof Collection ? setEntrySet.size() : 4);
        zzfqmVar.b(setEntrySet);
        return zzfqmVar.c();
    }

    public static zzfqn d() {
        return zzfry.f18647u;
    }

    abstract zzfqf a();

    @Override // java.util.Map
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzfqf values() {
        zzfqf zzfqfVar = this.f18612q;
        if (zzfqfVar != null) {
            return zzfqfVar;
        }
        zzfqf zzfqfVarA = a();
        this.f18612q = zzfqfVarA;
        return zzfqfVarA;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    abstract zzfqp e();

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        return zzfrf.b(this, obj);
    }

    abstract zzfqp f();

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final zzfqp entrySet() {
        zzfqp zzfqpVar = this.f18610o;
        if (zzfqpVar != null) {
            return zzfqpVar;
        }
        zzfqp zzfqpVarE = e();
        this.f18610o = zzfqpVarE;
        return zzfqpVarE;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzfsf.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final zzfqp keySet() {
        zzfqp zzfqpVar = this.f18611p;
        if (zzfqpVar != null) {
            return zzfqpVar;
        }
        zzfqp zzfqpVarF = f();
        this.f18611p = zzfqpVarF;
        return zzfqpVarF;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzfpj.a(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z10 = false;
        }
        sb.append('}');
        return sb.toString();
    }
}
