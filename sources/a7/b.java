package a7;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import k5.e;
import k5.h;
import k5.j;

/* JADX INFO: compiled from: ComponentMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements j {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(String str, k5.c cVar, e eVar) {
        try {
            c.b(str);
            return cVar.h().a(eVar);
        } finally {
            c.a();
        }
    }

    @Override // k5.j
    public List<k5.c<?>> a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final k5.c<?> cVarT : componentRegistrar.getComponents()) {
            final String strI = cVarT.i();
            if (strI != null) {
                cVarT = cVarT.t(new h() { // from class: a7.a
                    @Override // k5.h
                    public final Object a(e eVar) {
                        return b.c(strI, cVarT, eVar);
                    }
                });
            }
            arrayList.add(cVarT);
        }
        return arrayList;
    }
}
