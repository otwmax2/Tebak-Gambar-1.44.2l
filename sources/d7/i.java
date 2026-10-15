package d7;

import com.google.gson.u;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i implements x {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c7.c f28656o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.gson.e f28657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final c7.d f28658q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final d f28659r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final f7.b f28660s = f7.b.a();

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Field f28661d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f28662e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ w f28663f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ com.google.gson.f f28664g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ g7.a f28665h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f28666i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, boolean z10, boolean z11, Field field, boolean z12, w wVar, com.google.gson.f fVar, g7.a aVar, boolean z13) {
            super(str, z10, z11);
            this.f28661d = field;
            this.f28662e = z12;
            this.f28663f = wVar;
            this.f28664g = fVar;
            this.f28665h = aVar;
            this.f28666i = z13;
        }

        @Override // d7.i.c
        void a(h7.a aVar, Object obj) throws IllegalAccessException, IOException {
            Object objB = this.f28663f.b(aVar);
            if (objB == null && this.f28666i) {
                return;
            }
            this.f28661d.set(obj, objB);
        }

        @Override // d7.i.c
        void b(h7.c cVar, Object obj) throws IllegalAccessException, IOException {
            (this.f28662e ? this.f28663f : new m(this.f28664g, this.f28663f, this.f28665h.getType())).d(cVar, this.f28661d.get(obj));
        }

        @Override // d7.i.c
        public boolean c(Object obj) throws IllegalAccessException, IOException {
            return this.f28671b && this.f28661d.get(obj) != obj;
        }
    }

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public static final class b<T> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c7.i<T> f28668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<String, c> f28669b;

        b(c7.i<T> iVar, Map<String, c> map) {
            this.f28668a = iVar;
            this.f28669b = map;
        }

        @Override // com.google.gson.w
        public T b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            T tA = this.f28668a.a();
            try {
                aVar.c();
                while (aVar.j()) {
                    c cVar = this.f28669b.get(aVar.r());
                    if (cVar == null || !cVar.f28672c) {
                        aVar.J();
                    } else {
                        cVar.a(aVar, tA);
                    }
                }
                aVar.h();
                return tA;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new u(e11);
            }
        }

        @Override // com.google.gson.w
        public void d(h7.c cVar, T t10) throws IOException {
            if (t10 == null) {
                cVar.n();
                return;
            }
            cVar.e();
            try {
                for (c cVar2 : this.f28669b.values()) {
                    if (cVar2.c(t10)) {
                        cVar.l(cVar2.f28670a);
                        cVar2.b(cVar, t10);
                    }
                }
                cVar.h();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f28670a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f28671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f28672c;

        protected c(String str, boolean z10, boolean z11) {
            this.f28670a = str;
            this.f28671b = z10;
            this.f28672c = z11;
        }

        abstract void a(h7.a aVar, Object obj) throws IllegalAccessException, IOException;

        abstract void b(h7.c cVar, Object obj) throws IllegalAccessException, IOException;

        abstract boolean c(Object obj) throws IllegalAccessException, IOException;
    }

    public i(c7.c cVar, com.google.gson.e eVar, c7.d dVar, d dVar2) {
        this.f28656o = cVar;
        this.f28657p = eVar;
        this.f28658q = dVar;
        this.f28659r = dVar2;
    }

    private c b(com.google.gson.f fVar, Field field, String str, g7.a<?> aVar, boolean z10, boolean z11) {
        boolean zA = c7.k.a(aVar.getRawType());
        b7.b bVar = (b7.b) field.getAnnotation(b7.b.class);
        w<?> wVarB = bVar != null ? this.f28659r.b(this.f28656o, fVar, aVar, bVar) : null;
        boolean z12 = wVarB != null;
        if (wVarB == null) {
            wVarB = fVar.m(aVar);
        }
        return new a(str, z10, z11, field, z12, wVarB, fVar, aVar, zA);
    }

    static boolean d(Field field, boolean z10, c7.d dVar) {
        return (dVar.d(field.getType(), z10) || dVar.h(field, z10)) ? false : true;
    }

    private Map<String, c> e(com.google.gson.f fVar, g7.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = aVar.getType();
        g7.a<?> aVar2 = aVar;
        Class<?> rawType = cls;
        while (rawType != Object.class) {
            Field[] declaredFields = rawType.getDeclaredFields();
            int length = declaredFields.length;
            boolean z10 = false;
            int i10 = 0;
            while (i10 < length) {
                Field field = declaredFields[i10];
                boolean zC = c(field, true);
                boolean zC2 = c(field, z10);
                if (zC || zC2) {
                    this.f28660s.b(field);
                    Type typeP = c7.b.p(aVar2.getType(), rawType, field.getGenericType());
                    List<String> listF = f(field);
                    int size = listF.size();
                    c cVar = null;
                    int i11 = 0;
                    while (i11 < size) {
                        String str = listF.get(i11);
                        boolean z11 = i11 != 0 ? false : zC;
                        int i12 = i11;
                        c cVar2 = cVar;
                        int i13 = size;
                        List<String> list = listF;
                        Field field2 = field;
                        cVar = cVar2 == null ? (c) linkedHashMap.put(str, b(fVar, field, str, g7.a.get(typeP), z11, zC2)) : cVar2;
                        i11 = i12 + 1;
                        zC = z11;
                        listF = list;
                        size = i13;
                        field = field2;
                    }
                    c cVar3 = cVar;
                    if (cVar3 != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + cVar3.f28670a);
                    }
                }
                i10++;
                z10 = false;
            }
            aVar2 = g7.a.get(c7.b.p(aVar2.getType(), rawType, rawType.getGenericSuperclass()));
            rawType = aVar2.getRawType();
        }
        return linkedHashMap;
    }

    private List<String> f(Field field) {
        b7.c cVar = (b7.c) field.getAnnotation(b7.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f28657p.c(field));
        }
        String strValue = cVar.value();
        String[] strArrAlternate = cVar.alternate();
        if (strArrAlternate.length == 0) {
            return Collections.singletonList(strValue);
        }
        ArrayList arrayList = new ArrayList(strArrAlternate.length + 1);
        arrayList.add(strValue);
        for (String str : strArrAlternate) {
            arrayList.add(str);
        }
        return arrayList;
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new b(this.f28656o.a(aVar), e(fVar, aVar, rawType));
        }
        return null;
    }

    public boolean c(Field field, boolean z10) {
        return d(field, z10, this.f28658q);
    }
}
