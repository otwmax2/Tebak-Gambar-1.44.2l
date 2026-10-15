package t9;

import i9.d0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ClassReference.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e implements z9.b<Object>, d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f35537b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<Class<? extends h9.c<?>>, Integer> f35538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final HashMap<String, String> f35539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final HashMap<String, String> f35540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final HashMap<String, String> f35541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map<String, String> f35542g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f35543a;

    /* JADX INFO: compiled from: ClassReference.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final String a(Class<?> cls) {
            String str;
            m.e(cls, "jClass");
            String str2 = null;
            if (!cls.isAnonymousClass()) {
                if (cls.isLocalClass()) {
                    String simpleName = cls.getSimpleName();
                    Method enclosingMethod = cls.getEnclosingMethod();
                    if (enclosingMethod != null) {
                        m.d(simpleName, "name");
                        String strI0 = ba.q.i0(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                        if (strI0 != null) {
                            return strI0;
                        }
                    }
                    Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                    if (enclosingConstructor == null) {
                        m.d(simpleName, "name");
                        return ba.q.h0(simpleName, '$', null, 2, null);
                    }
                    m.d(simpleName, "name");
                    return ba.q.i0(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
                }
                if (!cls.isArray()) {
                    String str3 = (String) e.f35542g.get(cls.getName());
                    return str3 == null ? cls.getSimpleName() : str3;
                }
                Class<?> componentType = cls.getComponentType();
                if (componentType.isPrimitive() && (str = (String) e.f35542g.get(componentType.getName())) != null) {
                    str2 = str + "Array";
                }
                if (str2 == null) {
                    return "Array";
                }
            }
            return str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i10 = 0;
        List listG = i9.l.g(s9.a.class, s9.l.class, s9.p.class, s9.q.class, s9.r.class, s9.s.class, s9.t.class, s9.u.class, s9.v.class, s9.w.class, s9.b.class, s9.c.class, s9.d.class, s9.e.class, s9.f.class, s9.g.class, s9.h.class, s9.i.class, s9.j.class, s9.k.class, s9.m.class, s9.n.class, s9.o.class);
        ArrayList arrayList = new ArrayList(i9.m.l(listG, 10));
        for (Object obj : listG) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                i9.l.k();
            }
            arrayList.add(h9.q.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f35538c = d0.j(arrayList);
        HashMap<String, String> map = new HashMap<>();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        f35539d = map;
        HashMap<String, String> map2 = new HashMap<>();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        f35540e = map2;
        HashMap<String, String> map3 = new HashMap<>();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        m.d(collectionValues, "primitiveFqNames.values");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            m.d(str, "kotlinName");
            sb.append(ba.q.k0(str, '.', null, 2, null));
            sb.append("CompanionObject");
            h9.m mVarA = h9.q.a(sb.toString(), str + ".Companion");
            map3.put(mVarA.c(), mVarA.d());
        }
        for (Map.Entry<Class<? extends h9.c<?>>, Integer> entry : f35538c.entrySet()) {
            map3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        f35541f = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(i9.c0.a(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), ba.q.k0((String) entry2.getValue(), '.', null, 2, null));
        }
        f35542g = linkedHashMap;
    }

    public e(Class<?> cls) {
        m.e(cls, "jClass");
        this.f35543a = cls;
    }

    @Override // z9.b
    public String a() {
        return f35537b.a(b());
    }

    @Override // t9.d
    public Class<?> b() {
        return this.f35543a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && m.a(r9.a.b(this), r9.a.b((z9.b) obj));
    }

    public int hashCode() {
        return r9.a.b(this).hashCode();
    }

    public String toString() {
        return b().toString() + " (Kotlin reflection is not available)";
    }
}
