package c2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: SizeConfigStrategy.java */
/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public class i implements g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Bitmap.Config[] f4836d = {Bitmap.Config.ARGB_8888, null};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Bitmap.Config[] f4837e = {Bitmap.Config.RGB_565};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Bitmap.Config[] f4838f = {Bitmap.Config.ARGB_4444};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Bitmap.Config[] f4839g = {Bitmap.Config.ALPHA_8};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f4840a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e<b, Bitmap> f4841b = new e<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f4842c = new HashMap();

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4843a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f4843a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4843a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4843a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4843a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    static final class b implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f4844a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4845b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bitmap.Config f4846c;

        public b(c cVar) {
            this.f4844a = cVar;
        }

        @Override // c2.h
        public void a() {
            this.f4844a.c(this);
        }

        public void c(int i10, Bitmap.Config config) {
            this.f4845b = i10;
            this.f4846c = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f4845b != bVar.f4845b) {
                return false;
            }
            Bitmap.Config config = this.f4846c;
            Bitmap.Config config2 = bVar.f4846c;
            if (config == null) {
                if (config2 != null) {
                    return false;
                }
            } else if (!config.equals(config2)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i10 = this.f4845b * 31;
            Bitmap.Config config = this.f4846c;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return i.j(this.f4845b, this.f4846c);
        }
    }

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    static class c extends c2.b<b> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // c2.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b a() {
            return new b(this);
        }

        public b e(int i10, Bitmap.Config config) {
            b bVarB = b();
            bVarB.c(i10, config);
            return bVarB;
        }
    }

    private void h(Integer num, Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMapL = l(config);
        Integer num2 = (Integer) navigableMapL.get(num);
        if (num2.intValue() == 1) {
            navigableMapL.remove(num);
        } else {
            navigableMapL.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private b i(b bVar, int i10, Bitmap.Config config) {
        for (Bitmap.Config config2 : k(config)) {
            Integer numCeilingKey = l(config2).ceilingKey(Integer.valueOf(i10));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i10 * 8) {
                if (numCeilingKey.intValue() == i10) {
                    if (config2 == null) {
                        if (config == null) {
                            return bVar;
                        }
                    } else if (config2.equals(config)) {
                        return bVar;
                    }
                }
                this.f4840a.c(bVar);
                return this.f4840a.e(numCeilingKey.intValue(), config2);
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    private static Bitmap.Config[] k(Bitmap.Config config) {
        int i10 = a.f4843a[config.ordinal()];
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? new Bitmap.Config[]{config} : f4839g : f4838f : f4837e : f4836d;
    }

    private NavigableMap<Integer, Integer> l(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f4842c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f4842c.put(config, treeMap);
        return treeMap;
    }

    @Override // c2.g
    public void a(Bitmap bitmap) {
        b bVarE = this.f4840a.e(x2.h.f(bitmap), bitmap.getConfig());
        this.f4841b.d(bVarE, bitmap);
        NavigableMap<Integer, Integer> navigableMapL = l(bitmap.getConfig());
        Integer num = (Integer) navigableMapL.get(Integer.valueOf(bVarE.f4845b));
        navigableMapL.put(Integer.valueOf(bVarE.f4845b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // c2.g
    public Bitmap b(int i10, int i11, Bitmap.Config config) {
        int iE = x2.h.e(i10, i11, config);
        Bitmap bitmapA = this.f4841b.a(i(this.f4840a.e(iE, config), iE, config));
        if (bitmapA != null) {
            h(Integer.valueOf(x2.h.f(bitmapA)), bitmapA.getConfig());
            bitmapA.reconfigure(i10, i11, bitmapA.getConfig() != null ? bitmapA.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return bitmapA;
    }

    @Override // c2.g
    public Bitmap c() {
        Bitmap bitmapF = this.f4841b.f();
        if (bitmapF != null) {
            h(Integer.valueOf(x2.h.f(bitmapF)), bitmapF.getConfig());
        }
        return bitmapF;
    }

    @Override // c2.g
    public String d(int i10, int i11, Bitmap.Config config) {
        return j(x2.h.e(i10, i11, config), config);
    }

    @Override // c2.g
    public int e(Bitmap bitmap) {
        return x2.h.f(bitmap);
    }

    @Override // c2.g
    public String f(Bitmap bitmap) {
        return j(x2.h.f(bitmap), bitmap.getConfig());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f4841b);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f4842c.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f4842c.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), BuildConfig.FLAVOR);
        }
        sb.append(")}");
        return sb.toString();
    }
}
