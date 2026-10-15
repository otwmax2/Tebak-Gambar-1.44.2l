package androidx.lifecycle;

import a1.c;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: SavedStateHandle.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f3576f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Class<? extends Object>[] f3577g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f3578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, c.InterfaceC0003c> f3579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Object> f3580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, kotlinx.coroutines.flow.k<Object>> f3581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c.InterfaceC0003c f3582e;

    /* JADX INFO: compiled from: SavedStateHandle.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        public final z a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new z();
                }
                HashMap map = new HashMap();
                for (String str : bundle2.keySet()) {
                    t9.m.d(str, SDKConstants.PARAM_KEY);
                    map.put(str, bundle2.get(str));
                }
                return new z(map);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (!((parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) ? false : true)) {
                throw new IllegalStateException("Invalid bundle passed as restored state".toString());
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = parcelableArrayList.get(i10);
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i10));
            }
            return new z(linkedHashMap);
        }

        public final boolean b(Object obj) {
            if (obj == null) {
                return true;
            }
            for (Class cls : z.f3577g) {
                t9.m.b(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        Class<? extends Object>[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        Class<SizeF> cls = Integer.TYPE;
        clsArr[4] = cls;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        int i10 = Build.VERSION.SDK_INT;
        clsArr[27] = i10 >= 21 ? Size.class : cls;
        if (i10 >= 21) {
            cls = SizeF.class;
        }
        clsArr[28] = cls;
        f3577g = clsArr;
    }

    public z(Map<String, ? extends Object> map) {
        t9.m.e(map, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f3578a = linkedHashMap;
        this.f3579b = new LinkedHashMap();
        this.f3580c = new LinkedHashMap();
        this.f3581d = new LinkedHashMap();
        this.f3582e = new c.InterfaceC0003c() { // from class: androidx.lifecycle.y
            @Override // a1.c.InterfaceC0003c
            public final Bundle a() {
                return z.e(this.f3575a);
            }
        };
        linkedHashMap.putAll(map);
    }

    public static final z c(Bundle bundle, Bundle bundle2) {
        return f3576f.a(bundle, bundle2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle e(z zVar) {
        t9.m.e(zVar, "this$0");
        for (Map.Entry entry : i9.d0.l(zVar.f3579b).entrySet()) {
            zVar.f((String) entry.getKey(), ((c.InterfaceC0003c) entry.getValue()).a());
        }
        Set<String> setKeySet = zVar.f3578a.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(zVar.f3578a.get(str));
        }
        return androidx.core.os.d.a(h9.q.a("keys", arrayList), h9.q.a("values", arrayList2));
    }

    public final c.InterfaceC0003c d() {
        return this.f3582e;
    }

    public final <T> void f(String str, T t10) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        if (!f3576f.b(t10)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't put value with type ");
            t9.m.b(t10);
            sb.append(t10.getClass());
            sb.append(" into saved state");
            throw new IllegalArgumentException(sb.toString());
        }
        Object obj = this.f3580c.get(str);
        t tVar = obj instanceof t ? (t) obj : null;
        if (tVar != null) {
            tVar.n(t10);
        } else {
            this.f3578a.put(str, t10);
        }
        kotlinx.coroutines.flow.k<Object> kVar = this.f3581d.get(str);
        if (kVar == null) {
            return;
        }
        kVar.setValue(t10);
    }

    public z() {
        this.f3578a = new LinkedHashMap();
        this.f3579b = new LinkedHashMap();
        this.f3580c = new LinkedHashMap();
        this.f3581d = new LinkedHashMap();
        this.f3582e = new c.InterfaceC0003c() { // from class: androidx.lifecycle.y
            @Override // a1.c.InterfaceC0003c
            public final Bundle a() {
                return z.e(this.f3575a);
            }
        };
    }
}
