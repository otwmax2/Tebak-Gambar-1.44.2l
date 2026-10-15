package wa;

import ja.d0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Type[] f36169a = new Type[0];

    /* JADX INFO: compiled from: Utils.java */
    /* JADX INFO: loaded from: classes2.dex */
    private static final class a implements GenericArrayType {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Type f36170o;

        a(Type type) {
            this.f36170o = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && o.e(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f36170o;
        }

        public int hashCode() {
            return this.f36170o.hashCode();
        }

        public String toString() {
            return o.q(this.f36170o) + "[]";
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    private static final class b implements ParameterizedType {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Type f36171o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Type f36172p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Type[] f36173q;

        b(@Nullable Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                o.b(type3, "typeArgument == null");
                o.c(type3);
            }
            this.f36171o = type;
            this.f36172p = type2;
            this.f36173q = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && o.e(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f36173q.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f36171o;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f36172p;
        }

        public int hashCode() {
            int iHashCode = Arrays.hashCode(this.f36173q) ^ this.f36172p.hashCode();
            Type type = this.f36171o;
            return iHashCode ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            Type[] typeArr = this.f36173q;
            if (typeArr.length == 0) {
                return o.q(this.f36172p);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(o.q(this.f36172p));
            sb.append("<");
            sb.append(o.q(this.f36173q[0]));
            for (int i10 = 1; i10 < this.f36173q.length; i10++) {
                sb.append(", ");
                sb.append(o.q(this.f36173q[i10]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    /* JADX INFO: loaded from: classes2.dex */
    private static final class c implements WildcardType {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Type f36174o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Type f36175p;

        c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                Objects.requireNonNull(typeArr[0]);
                o.c(typeArr[0]);
                this.f36175p = null;
                this.f36174o = typeArr[0];
                return;
            }
            Objects.requireNonNull(typeArr2[0]);
            o.c(typeArr2[0]);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f36175p = typeArr2[0];
            this.f36174o = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && o.e(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f36175p;
            return type != null ? new Type[]{type} : o.f36169a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f36174o};
        }

        public int hashCode() {
            Type type = this.f36175p;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f36174o.hashCode() + 31);
        }

        public String toString() {
            if (this.f36175p != null) {
                return "? super " + o.q(this.f36175p);
            }
            if (this.f36174o == Object.class) {
                return "?";
            }
            return "? extends " + o.q(this.f36174o);
        }
    }

    static d0 a(d0 d0Var) throws IOException {
        okio.c cVar = new okio.c();
        d0Var.source().l3(cVar);
        return d0.create(d0Var.contentType(), d0Var.contentLength(), cVar);
    }

    static <T> T b(@Nullable T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    static void c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    private static Class<?> d(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static boolean e(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return e(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    static Type f(Type type) {
        if (type instanceof ParameterizedType) {
            return h(0, (ParameterizedType) type);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }

    static Type g(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (interfaces[i10] == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(interfaces[i10])) {
                    return g(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return g(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    static Type h(int i10, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i10 >= 0 && i10 < actualTypeArguments.length) {
            Type type = actualTypeArguments[i10];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        throw new IllegalArgumentException("Index " + i10 + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    static Class<?> i(Type type) {
        b(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(i(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return i(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    static Type j(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return n(type, cls, g(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    static boolean k(@Nullable Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (k(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return k(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    private static int l(Object[] objArr, Object obj) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (obj.equals(objArr[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    static boolean m(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    static Type n(Type type, Class<?> cls, Type type2) {
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type3;
            Type typeO = o(type, cls, typeVariable);
            if (typeO == typeVariable) {
                return typeO;
            }
            type3 = typeO;
        }
        if (type3 instanceof Class) {
            Class cls2 = (Class) type3;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type typeN = n(type, cls, componentType);
                return componentType == typeN ? cls2 : new a(typeN);
            }
        }
        if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type typeN2 = n(type, cls, genericComponentType);
            return genericComponentType == typeN2 ? genericArrayType : new a(typeN2);
        }
        if (type3 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            Type ownerType = parameterizedType.getOwnerType();
            Type typeN3 = n(type, cls, ownerType);
            boolean z10 = typeN3 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                Type typeN4 = n(type, cls, actualTypeArguments[i10]);
                if (typeN4 != actualTypeArguments[i10]) {
                    if (!z10) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z10 = true;
                    }
                    actualTypeArguments[i10] = typeN4;
                }
            }
            return z10 ? new b(typeN3, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        boolean z11 = type3 instanceof WildcardType;
        Type type4 = type3;
        if (z11) {
            WildcardType wildcardType = (WildcardType) type3;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type typeN5 = n(type, cls, lowerBounds[0]);
                type4 = wildcardType;
                if (typeN5 != lowerBounds[0]) {
                    return new c(new Type[]{Object.class}, new Type[]{typeN5});
                }
            } else {
                type4 = wildcardType;
                if (upperBounds.length == 1) {
                    Type typeN6 = n(type, cls, upperBounds[0]);
                    type4 = wildcardType;
                    if (typeN6 != upperBounds[0]) {
                        return new c(new Type[]{typeN6}, f36169a);
                    }
                }
            }
        }
        return type4;
    }

    private static Type o(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> clsD = d(typeVariable);
        if (clsD == null) {
            return typeVariable;
        }
        Type typeG = g(type, cls, clsD);
        if (!(typeG instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) typeG).getActualTypeArguments()[l(clsD.getTypeParameters(), typeVariable)];
    }

    static void p(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    static String q(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    static <T> void r(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (cls.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }
}
