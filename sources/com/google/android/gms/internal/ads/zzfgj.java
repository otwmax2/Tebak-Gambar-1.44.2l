package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgj implements zzfgh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfgh f18171a;

    public zzfgj(zzfgh zzfghVar) {
        this.f18171a = zzfghVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfgh
    public final void a(View view, JSONObject jSONObject, zzfgg zzfggVar, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        zzffz zzffzVarA = zzffz.a();
        if (zzffzVarA != null) {
            Collection collectionB = zzffzVarA.b();
            int size = collectionB.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            Iterator it = collectionB.iterator();
            while (it.hasNext()) {
                View viewF = ((zzffo) it.next()).f();
                if (viewF != null && viewF.isAttachedToWindow() && viewF.isShown()) {
                    View view2 = viewF;
                    while (true) {
                        if (view2 == null) {
                            View rootView = viewF.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float fA = zzfgs.a(rootView);
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i10 = size2 - 1;
                                    if (zzfgs.a((View) arrayList.get(i10)) <= fA) {
                                        break;
                                    } else {
                                        size2 = i10;
                                    }
                                }
                                arrayList.add(size2, rootView);
                            }
                        } else if (view2.getAlpha() != 0.0f) {
                            Object parent = view2.getParent();
                            view2 = parent instanceof View ? (View) parent : null;
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i11 = 0; i11 < size3; i11++) {
            zzfggVar.a((View) arrayList.get(i11), this.f18171a, jSONObject, z11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgh
    public final JSONObject b(View view) {
        throw null;
    }
}
