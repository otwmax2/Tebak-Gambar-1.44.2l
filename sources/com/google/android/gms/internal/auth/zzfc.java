package com.google.android.gms.internal.auth;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfc extends zzfe {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f21503c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzfc() {
        super(null);
    }

    /* synthetic */ zzfc(zzfb zzfbVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.auth.zzfe
    final void a(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zzgz.f(obj, j10);
        if (list instanceof zzfa) {
            objUnmodifiableList = ((zzfa) list).b();
        } else {
            if (f21503c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzfx) && (list instanceof zzeu)) {
                zzeu zzeuVar = (zzeu) list;
                if (zzeuVar.a()) {
                    zzeuVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzgz.p(obj, j10, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.auth.zzfe
    final <E> void b(Object obj, Object obj2, long j10) {
        List list;
        List list2;
        List list3 = (List) zzgz.f(obj2, j10);
        int size = list3.size();
        List list4 = (List) zzgz.f(obj, j10);
        if (list4.isEmpty()) {
            List zzezVar = list4 instanceof zzfa ? new zzez(size) : ((list4 instanceof zzfx) && (list4 instanceof zzeu)) ? ((zzeu) list4).K(size) : new ArrayList(size);
            zzgz.p(obj, j10, zzezVar);
            list2 = zzezVar;
        } else {
            if (f21503c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzgz.p(obj, j10, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzgu) {
                zzez zzezVar2 = new zzez(list4.size() + size);
                zzezVar2.addAll(zzezVar2.size(), (zzgu) list4);
                zzgz.p(obj, j10, zzezVar2);
                list = zzezVar2;
            } else {
                boolean z10 = list4 instanceof zzfx;
                list2 = list4;
                if (z10) {
                    boolean z11 = list4 instanceof zzeu;
                    list2 = list4;
                    if (z11) {
                        zzeu zzeuVar = (zzeu) list4;
                        list2 = list4;
                        if (!zzeuVar.a()) {
                            zzeu<E> zzeuVarK = zzeuVar.K(list4.size() + size);
                            zzgz.p(obj, j10, zzeuVarK);
                            list2 = zzeuVarK;
                        }
                    }
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzgz.p(obj, j10, list3);
    }
}
