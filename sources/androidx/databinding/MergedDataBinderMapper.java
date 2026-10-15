package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MergedDataBinderMapper extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<Class<? extends e>> f2599a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<e> f2600b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<String> f2601c = new CopyOnWriteArrayList();

    private boolean f() {
        boolean z10 = false;
        for (String str : this.f2601c) {
            try {
                Class<?> cls = Class.forName(str);
                if (e.class.isAssignableFrom(cls)) {
                    e((e) cls.newInstance());
                    this.f2601c.remove(str);
                    z10 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e10) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e10);
            } catch (InstantiationException e11) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e11);
            }
        }
        return z10;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i10) {
        Iterator<e> it = this.f2600b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingB = it.next().b(fVar, view, i10);
            if (viewDataBindingB != null) {
                return viewDataBindingB;
            }
        }
        if (f()) {
            return b(fVar, view, i10);
        }
        return null;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding c(f fVar, View[] viewArr, int i10) {
        Iterator<e> it = this.f2600b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingC = it.next().c(fVar, viewArr, i10);
            if (viewDataBindingC != null) {
                return viewDataBindingC;
            }
        }
        if (f()) {
            return c(fVar, viewArr, i10);
        }
        return null;
    }

    @Override // androidx.databinding.e
    public int d(String str) {
        Iterator<e> it = this.f2600b.iterator();
        while (it.hasNext()) {
            int iD = it.next().d(str);
            if (iD != 0) {
                return iD;
            }
        }
        if (f()) {
            return d(str);
        }
        return 0;
    }

    public void e(e eVar) {
        if (this.f2599a.add((Class<? extends e>) eVar.getClass())) {
            this.f2600b.add(eVar);
            Iterator<e> it = eVar.a().iterator();
            while (it.hasNext()) {
                e(it.next());
            }
        }
    }
}
