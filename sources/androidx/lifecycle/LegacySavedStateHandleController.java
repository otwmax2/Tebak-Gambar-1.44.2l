package androidx.lifecycle;

import a1.c;
import android.os.Bundle;
import androidx.lifecycle.j;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class LegacySavedStateHandleController {

    static final class a implements c.a {
        a() {
        }

        @Override // a1.c.a
        public void a(a1.e eVar) {
            if (!(eVar instanceof m0)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
            }
            l0 viewModelStore = ((m0) eVar).getViewModelStore();
            a1.c savedStateRegistry = eVar.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                LegacySavedStateHandleController.a(viewModelStore.b(it.next()), savedStateRegistry, eVar.getLifecycle());
            }
            if (viewModelStore.c().isEmpty()) {
                return;
            }
            savedStateRegistry.i(a.class);
        }
    }

    static void a(g0 g0Var, a1.c cVar, j jVar) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) g0Var.g("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.j()) {
            return;
        }
        savedStateHandleController.h(cVar, jVar);
        c(cVar, jVar);
    }

    static SavedStateHandleController b(a1.c cVar, j jVar, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, z.c(cVar.b(str), bundle));
        savedStateHandleController.h(cVar, jVar);
        c(cVar, jVar);
        return savedStateHandleController;
    }

    private static void c(final a1.c cVar, final j jVar) {
        j.c cVarB = jVar.b();
        if (cVarB == j.c.INITIALIZED || cVarB.c(j.c.STARTED)) {
            cVar.i(a.class);
        } else {
            jVar.a(new l() { // from class: androidx.lifecycle.LegacySavedStateHandleController.1
                @Override // androidx.lifecycle.l
                public void c(n nVar, j.b bVar) {
                    if (bVar == j.b.ON_START) {
                        jVar.c(this);
                        cVar.i(a.class);
                    }
                }
            });
        }
    }
}
