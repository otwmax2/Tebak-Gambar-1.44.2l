package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2453a;

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f2454a;

        a(d dVar) {
            this.f2454a = dVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            androidx.core.view.accessibility.c cVarB = this.f2454a.b(i10);
            if (cVarB == null) {
                return null;
            }
            return cVarB.w0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i10) {
            List<androidx.core.view.accessibility.c> listC = this.f2454a.c(str, i10);
            if (listC == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listC.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(listC.get(i11).w0());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i10, int i11, Bundle bundle) {
            return this.f2454a.f(i10, i11, bundle);
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    static class b extends a {
        b(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i10) {
            androidx.core.view.accessibility.c cVarD = this.f2454a.d(i10);
            if (cVarD == null) {
                return null;
            }
            return cVarD.w0();
        }
    }

    /* JADX INFO: compiled from: AccessibilityNodeProviderCompat.java */
    static class c extends b {
        c(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f2454a.a(i10, androidx.core.view.accessibility.c.x0(accessibilityNodeInfo), str, bundle);
        }
    }

    public d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f2453a = new c(this);
            return;
        }
        if (i10 >= 19) {
            this.f2453a = new b(this);
        } else if (i10 >= 16) {
            this.f2453a = new a(this);
        } else {
            this.f2453a = null;
        }
    }

    public void a(int i10, androidx.core.view.accessibility.c cVar, String str, Bundle bundle) {
    }

    public androidx.core.view.accessibility.c b(int i10) {
        return null;
    }

    public List<androidx.core.view.accessibility.c> c(String str, int i10) {
        return null;
    }

    public androidx.core.view.accessibility.c d(int i10) {
        return null;
    }

    public Object e() {
        return this.f2453a;
    }

    public boolean f(int i10, int i11, Bundle bundle) {
        return false;
    }

    public d(Object obj) {
        this.f2453a = obj;
    }
}
