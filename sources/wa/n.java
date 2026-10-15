package wa;

import ja.b0;
import ja.c0;
import ja.d0;
import ja.e;
import ja.s;
import ja.t;
import ja.v;
import ja.w;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import wa.i;
import ya.p;
import ya.q;
import ya.r;
import ya.u;
import ya.x;

/* JADX INFO: compiled from: ServiceMethod.java */
/* JADX INFO: loaded from: classes.dex */
final class n<R, T> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final Pattern f36132m = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final Pattern f36133n = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.a f36134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c<R, T> f36135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f36136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e<d0, R> f36137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f36138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f36139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s f36140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v f36141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f36142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f36143j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f36144k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final i<?>[] f36145l;

    /* JADX INFO: compiled from: ServiceMethod.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class a<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final m f36146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f36147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Annotation[] f36148c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Annotation[][] f36149d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Type[] f36150e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Type f36151f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f36152g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f36153h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f36154i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f36155j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f36156k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f36157l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        String f36158m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f36159n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f36160o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f36161p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        String f36162q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        s f36163r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        v f36164s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Set<String> f36165t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        i<?>[] f36166u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        e<d0, T> f36167v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        c<T, R> f36168w;

        a(m mVar, Method method) {
            this.f36146a = mVar;
            this.f36147b = method;
            this.f36148c = method.getAnnotations();
            this.f36150e = method.getGenericParameterTypes();
            this.f36149d = method.getParameterAnnotations();
        }

        private c<T, R> b() {
            Type genericReturnType = this.f36147b.getGenericReturnType();
            if (o.k(genericReturnType)) {
                throw d("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            }
            if (genericReturnType == Void.TYPE) {
                throw d("Service methods cannot return void.", new Object[0]);
            }
            try {
                return (c<T, R>) this.f36146a.b(genericReturnType, this.f36147b.getAnnotations());
            } catch (RuntimeException e10) {
                throw e(e10, "Unable to create call adapter for %s", genericReturnType);
            }
        }

        private e<d0, T> c() {
            try {
                return this.f36146a.k(this.f36151f, this.f36147b.getAnnotations());
            } catch (RuntimeException e10) {
                throw e(e10, "Unable to create converter for %s", this.f36151f);
            }
        }

        private RuntimeException d(String str, Object... objArr) {
            return e(null, str, objArr);
        }

        private RuntimeException e(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f36147b.getDeclaringClass().getSimpleName() + "." + this.f36147b.getName(), th);
        }

        private RuntimeException f(int i10, String str, Object... objArr) {
            return d(str + " (parameter #" + (i10 + 1) + ")", objArr);
        }

        private RuntimeException g(Throwable th, int i10, String str, Object... objArr) {
            return e(th, str + " (parameter #" + (i10 + 1) + ")", objArr);
        }

        private s h(String[] strArr) {
            s.a aVar = new s.a();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw d("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                    v vVarD = v.d(strTrim);
                    if (vVarD == null) {
                        throw d("Malformed content type: %s", strTrim);
                    }
                    this.f36164s = vVarD;
                } else {
                    aVar.a(strSubstring, strTrim);
                }
            }
            return aVar.d();
        }

        private void i(String str, String str2, boolean z10) {
            String str3 = this.f36158m;
            if (str3 != null) {
                throw d("Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f36158m = str;
            this.f36159n = z10;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (n.f36132m.matcher(strSubstring).find()) {
                    throw d("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.f36162q = str2;
            this.f36165t = n.c(str2);
        }

        private void j(Annotation annotation) {
            if (annotation instanceof ya.b) {
                i("DELETE", ((ya.b) annotation).value(), false);
                return;
            }
            if (annotation instanceof ya.f) {
                i("GET", ((ya.f) annotation).value(), false);
                return;
            }
            if (annotation instanceof ya.g) {
                i("HEAD", ((ya.g) annotation).value(), false);
                if (!Void.class.equals(this.f36151f)) {
                    throw d("HEAD method must use Void as response type.", new Object[0]);
                }
                return;
            }
            if (annotation instanceof ya.n) {
                i("PATCH", ((ya.n) annotation).value(), true);
                return;
            }
            if (annotation instanceof ya.o) {
                i("POST", ((ya.o) annotation).value(), true);
                return;
            }
            if (annotation instanceof p) {
                i("PUT", ((p) annotation).value(), true);
                return;
            }
            if (annotation instanceof ya.m) {
                i("OPTIONS", ((ya.m) annotation).value(), false);
                return;
            }
            if (annotation instanceof ya.h) {
                ya.h hVar = (ya.h) annotation;
                i(hVar.method(), hVar.path(), hVar.hasBody());
                return;
            }
            if (annotation instanceof ya.k) {
                String[] strArrValue = ((ya.k) annotation).value();
                if (strArrValue.length == 0) {
                    throw d("@Headers annotation is empty.", new Object[0]);
                }
                this.f36163r = h(strArrValue);
                return;
            }
            if (annotation instanceof ya.l) {
                if (this.f36160o) {
                    throw d("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f36161p = true;
            } else if (annotation instanceof ya.e) {
                if (this.f36161p) {
                    throw d("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f36160o = true;
            }
        }

        private i<?> k(int i10, Type type, Annotation[] annotationArr) {
            i<?> iVar = null;
            for (Annotation annotation : annotationArr) {
                i<?> iVarL = l(i10, type, annotationArr, annotation);
                if (iVarL != null) {
                    if (iVar != null) {
                        throw f(i10, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    iVar = iVarL;
                }
            }
            if (iVar != null) {
                return iVar;
            }
            throw f(i10, "No Retrofit annotation found.", new Object[0]);
        }

        private i<?> l(int i10, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof x) {
                if (this.f36157l) {
                    throw f(i10, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f36155j) {
                    throw f(i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f36156k) {
                    throw f(i10, "A @Url parameter must not come after a @Query", new Object[0]);
                }
                if (this.f36162q != null) {
                    throw f(i10, "@Url cannot be used with @%s URL", this.f36158m);
                }
                this.f36157l = true;
                if (type == t.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new i.o();
                }
                throw f(i10, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof ya.s) {
                if (this.f36156k) {
                    throw f(i10, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f36157l) {
                    throw f(i10, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f36162q == null) {
                    throw f(i10, "@Path can only be used with relative url on @%s", this.f36158m);
                }
                this.f36155j = true;
                ya.s sVar = (ya.s) annotation;
                String strValue = sVar.value();
                m(i10, strValue);
                return new i.j(strValue, this.f36146a.l(type, annotationArr), sVar.encoded());
            }
            if (annotation instanceof ya.t) {
                ya.t tVar = (ya.t) annotation;
                String strValue2 = tVar.value();
                boolean zEncoded = tVar.encoded();
                Class<?> clsI = o.i(type);
                this.f36156k = true;
                if (!Iterable.class.isAssignableFrom(clsI)) {
                    return clsI.isArray() ? new i.k(strValue2, this.f36146a.l(n.b(clsI.getComponentType()), annotationArr), zEncoded).b() : new i.k(strValue2, this.f36146a.l(type, annotationArr), zEncoded);
                }
                if (type instanceof ParameterizedType) {
                    return new i.k(strValue2, this.f36146a.l(o.h(0, (ParameterizedType) type), annotationArr), zEncoded).c();
                }
                throw f(i10, clsI.getSimpleName() + " must include generic type (e.g., " + clsI.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof ya.v) {
                boolean zEncoded2 = ((ya.v) annotation).encoded();
                Class<?> clsI2 = o.i(type);
                this.f36156k = true;
                if (!Iterable.class.isAssignableFrom(clsI2)) {
                    return clsI2.isArray() ? new i.m(this.f36146a.l(n.b(clsI2.getComponentType()), annotationArr), zEncoded2).b() : new i.m(this.f36146a.l(type, annotationArr), zEncoded2);
                }
                if (type instanceof ParameterizedType) {
                    return new i.m(this.f36146a.l(o.h(0, (ParameterizedType) type), annotationArr), zEncoded2).c();
                }
                throw f(i10, clsI2.getSimpleName() + " must include generic type (e.g., " + clsI2.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof u) {
                Class<?> clsI3 = o.i(type);
                if (!Map.class.isAssignableFrom(clsI3)) {
                    throw f(i10, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeJ = o.j(type, clsI3, Map.class);
                if (!(typeJ instanceof ParameterizedType)) {
                    throw f(i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeJ;
                Type typeH = o.h(0, parameterizedType);
                if (String.class == typeH) {
                    return new i.l(this.f36146a.l(o.h(1, parameterizedType), annotationArr), ((u) annotation).encoded());
                }
                throw f(i10, "@QueryMap keys must be of type String: " + typeH, new Object[0]);
            }
            if (annotation instanceof ya.i) {
                String strValue3 = ((ya.i) annotation).value();
                Class<?> clsI4 = o.i(type);
                if (!Iterable.class.isAssignableFrom(clsI4)) {
                    return clsI4.isArray() ? new i.f(strValue3, this.f36146a.l(n.b(clsI4.getComponentType()), annotationArr)).b() : new i.f(strValue3, this.f36146a.l(type, annotationArr));
                }
                if (type instanceof ParameterizedType) {
                    return new i.f(strValue3, this.f36146a.l(o.h(0, (ParameterizedType) type), annotationArr)).c();
                }
                throw f(i10, clsI4.getSimpleName() + " must include generic type (e.g., " + clsI4.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof ya.j) {
                Class<?> clsI5 = o.i(type);
                if (!Map.class.isAssignableFrom(clsI5)) {
                    throw f(i10, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type typeJ2 = o.j(type, clsI5, Map.class);
                if (!(typeJ2 instanceof ParameterizedType)) {
                    throw f(i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeJ2;
                Type typeH2 = o.h(0, parameterizedType2);
                if (String.class == typeH2) {
                    return new i.g(this.f36146a.l(o.h(1, parameterizedType2), annotationArr));
                }
                throw f(i10, "@HeaderMap keys must be of type String: " + typeH2, new Object[0]);
            }
            if (annotation instanceof ya.c) {
                if (!this.f36160o) {
                    throw f(i10, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                ya.c cVar = (ya.c) annotation;
                String strValue4 = cVar.value();
                boolean zEncoded3 = cVar.encoded();
                this.f36152g = true;
                Class<?> clsI6 = o.i(type);
                if (!Iterable.class.isAssignableFrom(clsI6)) {
                    return clsI6.isArray() ? new i.d(strValue4, this.f36146a.l(n.b(clsI6.getComponentType()), annotationArr), zEncoded3).b() : new i.d(strValue4, this.f36146a.l(type, annotationArr), zEncoded3);
                }
                if (type instanceof ParameterizedType) {
                    return new i.d(strValue4, this.f36146a.l(o.h(0, (ParameterizedType) type), annotationArr), zEncoded3).c();
                }
                throw f(i10, clsI6.getSimpleName() + " must include generic type (e.g., " + clsI6.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof ya.d) {
                if (!this.f36160o) {
                    throw f(i10, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> clsI7 = o.i(type);
                if (!Map.class.isAssignableFrom(clsI7)) {
                    throw f(i10, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeJ3 = o.j(type, clsI7, Map.class);
                if (!(typeJ3 instanceof ParameterizedType)) {
                    throw f(i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeJ3;
                Type typeH3 = o.h(0, parameterizedType3);
                if (String.class == typeH3) {
                    e<T, String> eVarL = this.f36146a.l(o.h(1, parameterizedType3), annotationArr);
                    this.f36152g = true;
                    return new i.e(eVarL, ((ya.d) annotation).encoded());
                }
                throw f(i10, "@FieldMap keys must be of type String: " + typeH3, new Object[0]);
            }
            if (!(annotation instanceof q)) {
                if (!(annotation instanceof r)) {
                    if (!(annotation instanceof ya.a)) {
                        return null;
                    }
                    if (this.f36160o || this.f36161p) {
                        throw f(i10, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                    }
                    if (this.f36154i) {
                        throw f(i10, "Multiple @Body method annotations found.", new Object[0]);
                    }
                    try {
                        e<T, b0> eVarJ = this.f36146a.j(type, annotationArr, this.f36148c);
                        this.f36154i = true;
                        return new i.c(eVarJ);
                    } catch (RuntimeException e10) {
                        throw g(e10, i10, "Unable to create @Body converter for %s", type);
                    }
                }
                if (!this.f36161p) {
                    throw f(i10, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f36153h = true;
                Class<?> clsI8 = o.i(type);
                if (!Map.class.isAssignableFrom(clsI8)) {
                    throw f(i10, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type typeJ4 = o.j(type, clsI8, Map.class);
                if (!(typeJ4 instanceof ParameterizedType)) {
                    throw f(i10, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) typeJ4;
                Type typeH4 = o.h(0, parameterizedType4);
                if (String.class == typeH4) {
                    Type typeH5 = o.h(1, parameterizedType4);
                    if (w.b.class.isAssignableFrom(o.i(typeH5))) {
                        throw f(i10, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                    }
                    return new i.C0291i(this.f36146a.j(typeH5, annotationArr, this.f36148c), ((r) annotation).encoding());
                }
                throw f(i10, "@PartMap keys must be of type String: " + typeH4, new Object[0]);
            }
            if (!this.f36161p) {
                throw f(i10, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            q qVar = (q) annotation;
            this.f36153h = true;
            String strValue5 = qVar.value();
            Class<?> clsI9 = o.i(type);
            if (strValue5.isEmpty()) {
                if (!Iterable.class.isAssignableFrom(clsI9)) {
                    if (clsI9.isArray()) {
                        if (w.b.class.isAssignableFrom(clsI9.getComponentType())) {
                            return i.n.f36096a.b();
                        }
                        throw f(i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (w.b.class.isAssignableFrom(clsI9)) {
                        return i.n.f36096a;
                    }
                    throw f(i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                if (type instanceof ParameterizedType) {
                    if (w.b.class.isAssignableFrom(o.i(o.h(0, (ParameterizedType) type)))) {
                        return i.n.f36096a.c();
                    }
                    throw f(i10, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                throw f(i10, clsI9.getSimpleName() + " must include generic type (e.g., " + clsI9.getSimpleName() + "<String>)", new Object[0]);
            }
            s sVarG = s.g("Content-Disposition", "form-data; name=\"" + strValue5 + "\"", "Content-Transfer-Encoding", qVar.encoding());
            if (!Iterable.class.isAssignableFrom(clsI9)) {
                if (!clsI9.isArray()) {
                    if (w.b.class.isAssignableFrom(clsI9)) {
                        throw f(i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new i.h(sVarG, this.f36146a.j(type, annotationArr, this.f36148c));
                }
                Class<?> clsB = n.b(clsI9.getComponentType());
                if (w.b.class.isAssignableFrom(clsB)) {
                    throw f(i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new i.h(sVarG, this.f36146a.j(clsB, annotationArr, this.f36148c)).b();
            }
            if (type instanceof ParameterizedType) {
                Type typeH6 = o.h(0, (ParameterizedType) type);
                if (w.b.class.isAssignableFrom(o.i(typeH6))) {
                    throw f(i10, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new i.h(sVarG, this.f36146a.j(typeH6, annotationArr, this.f36148c)).c();
            }
            throw f(i10, clsI9.getSimpleName() + " must include generic type (e.g., " + clsI9.getSimpleName() + "<String>)", new Object[0]);
        }

        private void m(int i10, String str) {
            if (!n.f36133n.matcher(str).matches()) {
                throw f(i10, "@Path parameter name must match %s. Found: %s", n.f36132m.pattern(), str);
            }
            if (!this.f36165t.contains(str)) {
                throw f(i10, "URL \"%s\" does not contain \"{%s}\".", this.f36162q, str);
            }
        }

        public n a() {
            c<T, R> cVarB = b();
            this.f36168w = cVarB;
            Type typeA = cVarB.a();
            this.f36151f = typeA;
            if (typeA == l.class || typeA == c0.class) {
                throw d("'" + o.i(this.f36151f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.f36167v = c();
            for (Annotation annotation : this.f36148c) {
                j(annotation);
            }
            if (this.f36158m == null) {
                throw d("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.f36159n) {
                if (this.f36161p) {
                    throw d("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.f36160o) {
                    throw d("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f36149d.length;
            this.f36166u = new i[length];
            for (int i10 = 0; i10 < length; i10++) {
                Type type = this.f36150e[i10];
                if (o.k(type)) {
                    throw f(i10, "Parameter type must not include a type variable or wildcard: %s", type);
                }
                Annotation[] annotationArr = this.f36149d[i10];
                if (annotationArr == null) {
                    throw f(i10, "No Retrofit annotation found.", new Object[0]);
                }
                this.f36166u[i10] = k(i10, type, annotationArr);
            }
            if (this.f36162q == null && !this.f36157l) {
                throw d("Missing either @%s URL or @Url parameter.", this.f36158m);
            }
            boolean z10 = this.f36160o;
            if (!z10 && !this.f36161p && !this.f36159n && this.f36154i) {
                throw d("Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (z10 && !this.f36152g) {
                throw d("Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.f36161p || this.f36153h) {
                return new n(this);
            }
            throw d("Multipart method must contain at least one @Part.", new Object[0]);
        }
    }

    n(a<R, T> aVar) {
        this.f36134a = aVar.f36146a.c();
        this.f36135b = aVar.f36168w;
        this.f36136c = aVar.f36146a.a();
        this.f36137d = aVar.f36167v;
        this.f36138e = aVar.f36158m;
        this.f36139f = aVar.f36162q;
        this.f36140g = aVar.f36163r;
        this.f36141h = aVar.f36164s;
        this.f36142i = aVar.f36159n;
        this.f36143j = aVar.f36160o;
        this.f36144k = aVar.f36161p;
        this.f36145l = aVar.f36166u;
    }

    static Class<?> b(Class<?> cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }

    static Set<String> c(String str) {
        Matcher matcher = f36132m.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    T a(b<R> bVar) {
        return this.f36135b.b(bVar);
    }

    ja.e d(@Nullable Object... objArr) throws IOException {
        k kVar = new k(this.f36138e, this.f36136c, this.f36139f, this.f36140g, this.f36141h, this.f36142i, this.f36143j, this.f36144k);
        i<?>[] iVarArr = this.f36145l;
        int length = objArr != null ? objArr.length : 0;
        if (length == iVarArr.length) {
            for (int i10 = 0; i10 < length; i10++) {
                iVarArr[i10].a(kVar, objArr[i10]);
            }
            return this.f36134a.a(kVar.g());
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + iVarArr.length + ")");
    }

    R e(d0 d0Var) throws IOException {
        return this.f36137d.convert(d0Var);
    }
}
