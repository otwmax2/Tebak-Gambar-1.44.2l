package com.google.android.gms.internal.common;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzv implements Iterable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ CharSequence f21698o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzx f21699p;

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f21699p.d(this.f21698o);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(zzq.a(it.next(), ", "));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(zzq.a(it.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
