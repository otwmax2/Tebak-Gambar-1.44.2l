package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdk
public abstract class FastJsonResponse {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @ShowFirstParty
    public interface FieldConverter<I, O> {
        I E0(O o10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static final <O, I> I y(Field<I, O> field, Object obj) {
        return ((Field) field).f7579y != null ? field.e4(obj) : obj;
    }

    private static final void z(StringBuilder sb, Field field, Object obj) {
        int i10 = field.f7570p;
        if (i10 == 11) {
            Class<? extends FastJsonResponse> cls = field.f7576v;
            Preconditions.k(cls);
            sb.append(cls.cast(obj).toString());
        } else {
            if (i10 != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(JsonUtils.a((String) obj));
            sb.append("\"");
        }
    }

    @KeepForSdk
    public abstract Map<String, Field<?, ?>> h();

    @KeepForSdk
    protected Object t(Field field) {
        String str = field.f7574t;
        if (field.f7576v == null) {
            return v(str);
        }
        Preconditions.p(v(str) == null, "Concrete field shouldn't be value object: %s", field.f7574t);
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String strSubstring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(strSubstring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    @KeepForSdk
    public String toString() {
        Map<String, Field<?, ?>> mapH = h();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapH.keySet()) {
            Field<?, ?> field = mapH.get(str);
            if (w(field)) {
                Object objY = y(field, t(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (objY != null) {
                    switch (field.f7572r) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64Utils.c((byte[]) objY));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64Utils.d((byte[]) objY));
                            sb.append("\"");
                            break;
                        case 10:
                            MapUtils.a(sb, (HashMap) objY);
                            break;
                        default:
                            if (field.f7571q) {
                                ArrayList arrayList = (ArrayList) objY;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i10 = 0; i10 < size; i10++) {
                                    if (i10 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i10);
                                    if (obj != null) {
                                        z(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                            } else {
                                z(sb, field, objY);
                            }
                            break;
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    @KeepForSdk
    protected abstract Object v(String str);

    @KeepForSdk
    protected boolean w(Field field) {
        if (field.f7572r != 11) {
            return x(field.f7574t);
        }
        if (field.f7573s) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    @KeepForSdk
    protected abstract boolean x(String str);

    /* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @VisibleForTesting
    @SafeParcelable.Class
    @ShowFirstParty
    @KeepForSdk
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @SafeParcelable.VersionField
        private final int f7569o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @SafeParcelable.Field
        protected final int f7570p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        @SafeParcelable.Field
        protected final boolean f7571q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @SafeParcelable.Field
        protected final int f7572r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        @SafeParcelable.Field
        protected final boolean f7573s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        @SafeParcelable.Field
        protected final String f7574t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        @SafeParcelable.Field
        protected final int f7575u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        protected final Class<? extends FastJsonResponse> f7576v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        @SafeParcelable.Field
        protected final String f7577w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private zan f7578x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        @SafeParcelable.Field
        private FieldConverter<I, O> f7579y;

        @SafeParcelable.Constructor
        Field(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i12, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str, @SafeParcelable.Param int i13, @SafeParcelable.Param String str2, @SafeParcelable.Param zaa zaaVar) {
            this.f7569o = i10;
            this.f7570p = i11;
            this.f7571q = z10;
            this.f7572r = i12;
            this.f7573s = z11;
            this.f7574t = str;
            this.f7575u = i13;
            if (str2 == null) {
                this.f7576v = null;
                this.f7577w = null;
            } else {
                this.f7576v = SafeParcelResponse.class;
                this.f7577w = str2;
            }
            if (zaaVar == null) {
                this.f7579y = null;
            } else {
                this.f7579y = (FieldConverter<I, O>) zaaVar.W3();
            }
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<byte[], byte[]> V3(String str, int i10) {
            return new Field<>(8, false, 8, false, str, i10, null, null);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<T, T> W3(String str, int i10, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i10, cls, null);
        }

        @KeepForSdk
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> X3(String str, int i10, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i10, cls, null);
        }

        @VisibleForTesting
        @KeepForSdk
        public static Field<Integer, Integer> Y3(String str, int i10) {
            return new Field<>(0, false, 0, false, str, i10, null, null);
        }

        @KeepForSdk
        public static Field<String, String> Z3(String str, int i10) {
            return new Field<>(7, false, 7, false, str, i10, null, null);
        }

        @KeepForSdk
        public static Field<ArrayList<String>, ArrayList<String>> a4(String str, int i10) {
            return new Field<>(7, true, 7, true, str, i10, null, null);
        }

        @KeepForSdk
        public int b4() {
            return this.f7575u;
        }

        final zaa c4() {
            FieldConverter<I, O> fieldConverter = this.f7579y;
            if (fieldConverter == null) {
                return null;
            }
            return zaa.V3(fieldConverter);
        }

        public final I e4(O o10) {
            Preconditions.k(this.f7579y);
            return this.f7579y.E0(o10);
        }

        final String f4() {
            String str = this.f7577w;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final Map<String, Field<?, ?>> g4() {
            Preconditions.k(this.f7577w);
            Preconditions.k(this.f7578x);
            return (Map) Preconditions.k(this.f7578x.W3(this.f7577w));
        }

        public final void h4(zan zanVar) {
            this.f7578x = zanVar;
        }

        public final boolean i4() {
            return this.f7579y != null;
        }

        public final String toString() {
            Objects.ToStringHelper toStringHelperA = Objects.d(this).a("versionCode", Integer.valueOf(this.f7569o)).a("typeIn", Integer.valueOf(this.f7570p)).a("typeInArray", Boolean.valueOf(this.f7571q)).a("typeOut", Integer.valueOf(this.f7572r)).a("typeOutArray", Boolean.valueOf(this.f7573s)).a("outputFieldName", this.f7574t).a("safeParcelFieldId", Integer.valueOf(this.f7575u)).a("concreteTypeName", f4());
            Class<? extends FastJsonResponse> cls = this.f7576v;
            if (cls != null) {
                toStringHelperA.a("concreteType.class", cls.getCanonicalName());
            }
            FieldConverter<I, O> fieldConverter = this.f7579y;
            if (fieldConverter != null) {
                toStringHelperA.a("converterName", fieldConverter.getClass().getCanonicalName());
            }
            return toStringHelperA.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            int iA = SafeParcelWriter.a(parcel);
            SafeParcelWriter.l(parcel, 1, this.f7569o);
            SafeParcelWriter.l(parcel, 2, this.f7570p);
            SafeParcelWriter.c(parcel, 3, this.f7571q);
            SafeParcelWriter.l(parcel, 4, this.f7572r);
            SafeParcelWriter.c(parcel, 5, this.f7573s);
            SafeParcelWriter.t(parcel, 6, this.f7574t, false);
            SafeParcelWriter.l(parcel, 7, b4());
            SafeParcelWriter.t(parcel, 8, f4(), false);
            SafeParcelWriter.s(parcel, 9, c4(), i10, false);
            SafeParcelWriter.b(parcel, iA);
        }

        protected Field(int i10, boolean z10, int i11, boolean z11, String str, int i12, Class<? extends FastJsonResponse> cls, FieldConverter<I, O> fieldConverter) {
            this.f7569o = 1;
            this.f7570p = i10;
            this.f7571q = z10;
            this.f7572r = i11;
            this.f7573s = z11;
            this.f7574t = str;
            this.f7575u = i12;
            this.f7576v = cls;
            if (cls == null) {
                this.f7577w = null;
            } else {
                this.f7577w = cls.getCanonicalName();
            }
            this.f7579y = fieldConverter;
        }
    }
}
