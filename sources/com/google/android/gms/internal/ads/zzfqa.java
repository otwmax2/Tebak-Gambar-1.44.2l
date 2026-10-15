package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfqa extends zzfqb implements Map {
    protected zzfqa() {
    }

    @Override // com.google.android.gms.internal.ads.zzfqb
    protected /* bridge */ /* synthetic */ Object c() {
        throw null;
    }

    @Override // java.util.Map
    public final void clear() {
        j().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@CheckForNull Object obj) {
        return j().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(@CheckForNull Object obj) {
        return j().containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        return j().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || j().equals(obj);
    }

    @Override // java.util.Map
    @CheckForNull
    public Object get(@CheckForNull Object obj) {
        return j().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return j().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return j().isEmpty();
    }

    protected abstract Map j();

    protected final int k() {
        return zzfsf.a(entrySet());
    }

    @Override // java.util.Map
    public Set keySet() {
        return j().keySet();
    }

    protected final boolean l(@CheckForNull Object obj) {
        zzfra zzfraVar = new zzfra(entrySet().iterator());
        if (obj == null) {
            while (zzfraVar.hasNext()) {
                if (zzfraVar.next() == null) {
                    return true;
                }
            }
        } else {
            while (zzfraVar.hasNext()) {
                if (obj.equals(zzfraVar.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    protected final boolean m(@CheckForNull Object obj) {
        return zzfrf.b(this, obj);
    }

    @Override // java.util.Map
    @CheckForNull
    public final Object put(Object obj, Object obj2) {
        return j().put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        j().putAll(map);
    }

    @Override // java.util.Map
    @CheckForNull
    public final Object remove(@CheckForNull Object obj) {
        return j().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return j().size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return j().values();
    }
}
