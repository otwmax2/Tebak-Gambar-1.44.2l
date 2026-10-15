package ua;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import ua.f;

/* JADX INFO: compiled from: NonParcelRepository.java */
/* JADX INFO: loaded from: classes2.dex */
final class b implements ua.g<f.c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f35647b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class, f.c> f35648a;

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class a0 implements f.c<LinkedHashMap> {
        private a0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(LinkedHashMap linkedHashMap) {
            return new z(linkedHashMap);
        }
    }

    /* JADX INFO: renamed from: ua.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class C0262b extends q<boolean[]> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.b f35649q = new va.b();
        public static final a CREATOR = new a();

        /* JADX INFO: renamed from: ua.b$b$a */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class a implements Parcelable.Creator<C0262b> {
            private a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0262b createFromParcel(Parcel parcel) {
                return new C0262b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0262b[] newArray(int i10) {
                return new C0262b[i10];
            }
        }

        public C0262b(Parcel parcel) {
            super(parcel, (ua.h) f35649q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public C0262b(boolean[] zArr) {
            super(zArr, f35649q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class b0 extends q<LinkedHashSet> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.h f35650q = new a();
        public static final C0263b CREATOR = new C0263b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.h {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(b0.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$b0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0263b implements Parcelable.Creator<b0> {
            private C0263b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public b0 createFromParcel(Parcel parcel) {
                return new b0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public b0[] newArray(int i10) {
                return new b0[i10];
            }
        }

        public b0(Parcel parcel) {
            super(parcel, (ua.h) f35650q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public b0(LinkedHashSet linkedHashSet) {
            super(linkedHashSet, f35650q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class c implements f.c<boolean[]> {
        private c() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(boolean[] zArr) {
            return new C0262b(zArr);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class c0 implements f.c<LinkedHashSet> {
        private c0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(LinkedHashSet linkedHashSet) {
            return new b0(linkedHashSet);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class d extends q<Boolean> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Boolean> f35651q = new a();
        public static final C0264b CREATOR = new C0264b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Boolean> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Boolean c(Parcel parcel) {
                return Boolean.valueOf(parcel.createBooleanArray()[0]);
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Boolean bool, Parcel parcel) {
                parcel.writeBooleanArray(new boolean[]{bool.booleanValue()});
            }
        }

        /* JADX INFO: renamed from: ua.b$d$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0264b implements Parcelable.Creator<d> {
            private C0264b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        public d(Parcel parcel) {
            super(parcel, (ua.h) f35651q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public d(boolean z10) {
            super(Boolean.valueOf(z10), f35651q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class d0 extends q<LinkedList> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.i f35652q = new a();
        public static final C0265b CREATOR = new C0265b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.i {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(d0.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$d0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0265b implements Parcelable.Creator<d0> {
            private C0265b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d0 createFromParcel(Parcel parcel) {
                return new d0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public d0[] newArray(int i10) {
                return new d0[i10];
            }
        }

        public d0(Parcel parcel) {
            super(parcel, (ua.h) f35652q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public d0(LinkedList linkedList) {
            super(linkedList, f35652q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class e implements f.c<Boolean> {
        private e() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Boolean bool) {
            return new d(bool.booleanValue());
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class e0 implements f.c<LinkedList> {
        private e0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(LinkedList linkedList) {
            return new d0(linkedList);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class f implements f.c<Bundle> {
        private f() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Bundle bundle) {
            return bundle;
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class f0 extends q<List> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.a f35653q = new a();
        public static final C0266b CREATOR = new C0266b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.a {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(f0.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$f0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0266b implements Parcelable.Creator<f0> {
            private C0266b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public f0 createFromParcel(Parcel parcel) {
                return new f0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public f0[] newArray(int i10) {
                return new f0[i10];
            }
        }

        public f0(Parcel parcel) {
            super(parcel, (ua.h) f35653q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public f0(List list) {
            super(list, f35653q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class g extends q<byte[]> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<byte[]> f35654q = new a();
        public static final C0267b CREATOR = new C0267b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<byte[]> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public byte[] c(Parcel parcel) {
                return parcel.createByteArray();
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(byte[] bArr, Parcel parcel) {
                parcel.writeByteArray(bArr);
            }
        }

        /* JADX INFO: renamed from: ua.b$g$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0267b implements Parcelable.Creator<g> {
            private C0267b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g(Parcel parcel) {
            super(parcel, (ua.h) f35654q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public g(byte[] bArr) {
            super(bArr, f35654q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class g0 implements f.c<List> {
        private g0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(List list) {
            return new f0(list);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class h implements f.c<byte[]> {
        private h() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(byte[] bArr) {
            return new g(bArr);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class h0 extends q<Long> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Long> f35655q = new a();
        public static final C0268b CREATOR = new C0268b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Long> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Long c(Parcel parcel) {
                return Long.valueOf(parcel.readLong());
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Long l10, Parcel parcel) {
                parcel.writeLong(l10.longValue());
            }
        }

        /* JADX INFO: renamed from: ua.b$h0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0268b implements Parcelable.Creator<h0> {
            private C0268b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h0 createFromParcel(Parcel parcel) {
                return new h0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h0[] newArray(int i10) {
                return new h0[i10];
            }
        }

        public h0(Parcel parcel) {
            super(parcel, (ua.h) f35655q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public h0(Long l10) {
            super(l10, f35655q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class i extends q<Byte> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Byte> f35656q = new a();
        public static final C0269b CREATOR = new C0269b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Byte> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Byte c(Parcel parcel) {
                return Byte.valueOf(parcel.readByte());
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Byte b10, Parcel parcel) {
                parcel.writeByte(b10.byteValue());
            }
        }

        /* JADX INFO: renamed from: ua.b$i$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0269b implements Parcelable.Creator<i> {
            private C0269b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public i[] newArray(int i10) {
                return new i[i10];
            }
        }

        public i(Parcel parcel) {
            super(parcel, (ua.h) f35656q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public i(Byte b10) {
            super(b10, f35656q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class i0 implements f.c<Long> {
        private i0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Long l10) {
            return new h0(l10);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class j implements f.c<Byte> {
        private j() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Byte b10) {
            return new i(b10);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class j0 extends q<Map> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.e f35657q = new a();
        public static final C0270b CREATOR = new C0270b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.e {
            a() {
            }

            @Override // va.j
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }

            @Override // va.j
            public Object g(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void h(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$j0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0270b implements Parcelable.Creator<j0> {
            private C0270b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public j0 createFromParcel(Parcel parcel) {
                return new j0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public j0[] newArray(int i10) {
                return new j0[i10];
            }
        }

        public j0(Parcel parcel) {
            super(parcel, (ua.h) f35657q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public j0(Map map) {
            super(map, f35657q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class k extends q<char[]> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.c f35658q = new va.c();
        public static final a CREATOR = new a();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class a implements Parcelable.Creator<k> {
            private a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public k createFromParcel(Parcel parcel) {
                return new k(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public k[] newArray(int i10) {
                return new k[i10];
            }
        }

        public k(Parcel parcel) {
            super(parcel, (ua.h) f35658q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public k(char[] cArr) {
            super(cArr, f35658q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class k0 implements f.c<Map> {
        private k0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Map map) {
            return new j0(map);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class l implements f.c<char[]> {
        private l() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(char[] cArr) {
            return new k(cArr);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class m extends q<Character> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Character> f35660q = new a();
        public static final C0271b CREATOR = new C0271b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Character> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Character c(Parcel parcel) {
                return Character.valueOf(parcel.createCharArray()[0]);
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Character ch, Parcel parcel) {
                parcel.writeCharArray(new char[]{ch.charValue()});
            }
        }

        /* JADX INFO: renamed from: ua.b$m$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0271b implements Parcelable.Creator<m> {
            private C0271b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel) {
                return new m(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public m[] newArray(int i10) {
                return new m[i10];
            }
        }

        public m(Parcel parcel) {
            super(parcel, (ua.h) f35660q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public m(Character ch) {
            super(ch, f35660q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    static class m0 implements f.c<Parcelable> {
        m0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Parcelable parcelable) {
            return new l0(parcelable);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class n implements f.c<Character> {
        private n() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Character ch) {
            return new m(ch);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class n0 extends q<Set> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.f f35661q = new a();
        public static final C0272b CREATOR = new C0272b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.f {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(n0.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$n0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0272b implements Parcelable.Creator<n0> {
            private C0272b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public n0 createFromParcel(Parcel parcel) {
                return new n0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public n0[] newArray(int i10) {
                return new n0[i10];
            }
        }

        public n0(Parcel parcel) {
            super(parcel, (ua.h) f35661q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public n0(Set set) {
            super(set, f35661q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class o extends q<Collection> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.d f35662q = new a();
        public static final C0273b CREATOR = new C0273b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.a {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(o.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$o$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0273b implements Parcelable.Creator<o> {
            private C0273b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public o createFromParcel(Parcel parcel) {
                return new o(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public o[] newArray(int i10) {
                return new o[i10];
            }
        }

        public o(Parcel parcel) {
            super(parcel, (ua.h) f35662q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public o(Collection collection) {
            super(collection, f35662q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class o0 implements f.c<Set> {
        private o0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Set set) {
            return new n0(set);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class p implements f.c<Collection> {
        private p() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Collection collection) {
            return new o(collection);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class p0 extends q<SparseArray> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.l f35663q = new a();
        public static final C0274b CREATOR = new C0274b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.l {
            a() {
            }

            @Override // va.l
            public Object d(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(p0.class.getClassLoader()));
            }

            @Override // va.l
            public void e(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$p0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0274b implements Parcelable.Creator<p0> {
            private C0274b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public p0 createFromParcel(Parcel parcel) {
                return new p0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public p0[] newArray(int i10) {
                return new p0[i10];
            }
        }

        public p0(Parcel parcel) {
            super(parcel, (ua.h) f35663q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public p0(SparseArray sparseArray) {
            super(sparseArray, f35663q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class q0 implements f.c<SparseArray> {
        private q0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(SparseArray sparseArray) {
            return new p0(sparseArray);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class r extends q<Double> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Double> f35666q = new a();
        public static final C0275b CREATOR = new C0275b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Double> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Double c(Parcel parcel) {
                return Double.valueOf(parcel.readDouble());
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Double d10, Parcel parcel) {
                parcel.writeDouble(d10.doubleValue());
            }
        }

        /* JADX INFO: renamed from: ua.b$r$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0275b implements Parcelable.Creator<r> {
            private C0275b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public r createFromParcel(Parcel parcel) {
                return new r(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public r[] newArray(int i10) {
                return new r[i10];
            }
        }

        public r(Parcel parcel) {
            super(parcel, (ua.h) f35666q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public r(Double d10) {
            super(d10, f35666q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class r0 extends q<SparseBooleanArray> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<SparseBooleanArray> f35667q = new a();
        public static final C0276b CREATOR = new C0276b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<SparseBooleanArray> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public SparseBooleanArray c(Parcel parcel) {
                return parcel.readSparseBooleanArray();
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(SparseBooleanArray sparseBooleanArray, Parcel parcel) {
                parcel.writeSparseBooleanArray(sparseBooleanArray);
            }
        }

        /* JADX INFO: renamed from: ua.b$r0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0276b implements Parcelable.Creator<r0> {
            private C0276b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public r0 createFromParcel(Parcel parcel) {
                return new r0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public r0[] newArray(int i10) {
                return new r0[i10];
            }
        }

        public r0(Parcel parcel) {
            super(parcel, (ua.h) f35667q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public r0(SparseBooleanArray sparseBooleanArray) {
            super(sparseBooleanArray, f35667q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class s implements f.c<Double> {
        private s() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Double d10) {
            return new r(d10);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class s0 implements f.c<SparseBooleanArray> {
        private s0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(SparseBooleanArray sparseBooleanArray) {
            return new r0(sparseBooleanArray);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class t extends q<Float> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Float> f35668q = new a();
        public static final C0277b CREATOR = new C0277b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Float> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Float c(Parcel parcel) {
                return Float.valueOf(parcel.readFloat());
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Float f10, Parcel parcel) {
                parcel.writeFloat(f10.floatValue());
            }
        }

        /* JADX INFO: renamed from: ua.b$t$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0277b implements Parcelable.Creator<t> {
            private C0277b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public t createFromParcel(Parcel parcel) {
                return new t(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public t[] newArray(int i10) {
                return new t[i10];
            }
        }

        public t(Parcel parcel) {
            super(parcel, (ua.h) f35668q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public t(Float f10) {
            super(f10, f35668q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class u implements f.c<Float> {
        private u() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Float f10) {
            return new t(f10);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class u0 implements f.c<String> {
        private u0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(String str) {
            return new t0(str);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class v extends q<IBinder> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<IBinder> f35670q = new a();
        public static final C0278b CREATOR = new C0278b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<IBinder> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public IBinder c(Parcel parcel) {
                return parcel.readStrongBinder();
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(IBinder iBinder, Parcel parcel) {
                parcel.writeStrongBinder(iBinder);
            }
        }

        /* JADX INFO: renamed from: ua.b$v$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0278b implements Parcelable.Creator<v> {
            private C0278b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public v createFromParcel(Parcel parcel) {
                return new v(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public v[] newArray(int i10) {
                return new v[i10];
            }
        }

        public v(Parcel parcel) {
            super(parcel, (ua.h) f35670q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public v(IBinder iBinder) {
            super(iBinder, f35670q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class v0 extends q<Map> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.m f35671q = new a();
        public static final C0279b CREATOR = new C0279b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.m {
            a() {
            }

            @Override // va.j
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }

            @Override // va.j
            public Object g(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void h(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$v0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0279b implements Parcelable.Creator<v0> {
            private C0279b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public v0 createFromParcel(Parcel parcel) {
                return new v0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public v0[] newArray(int i10) {
                return new v0[i10];
            }
        }

        public v0(Parcel parcel) {
            super(parcel, (ua.h) f35671q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public v0(Map map) {
            super(map, f35671q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class w implements f.c<IBinder> {
        private w() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(IBinder iBinder) {
            return new v(iBinder);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class w0 implements f.c<Map> {
        private w0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Map map) {
            return new v0(map);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class x extends q<Integer> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.k<Integer> f35672q = new a();
        public static final C0280b CREATOR = new C0280b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.k<Integer> {
            a() {
            }

            @Override // va.k
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Integer c(Parcel parcel) {
                return Integer.valueOf(parcel.readInt());
            }

            @Override // va.k
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(Integer num, Parcel parcel) {
                parcel.writeInt(num.intValue());
            }
        }

        /* JADX INFO: renamed from: ua.b$x$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0280b implements Parcelable.Creator<x> {
            private C0280b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public x createFromParcel(Parcel parcel) {
                return new x(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public x[] newArray(int i10) {
                return new x[i10];
            }
        }

        public x(Parcel parcel) {
            super(parcel, (ua.h) f35672q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public x(Integer num) {
            super(num, f35672q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class x0 extends q<Set> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.n f35673q = new a();
        public static final C0281b CREATOR = new C0281b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.n {
            a() {
            }

            @Override // va.d
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(x0.class.getClassLoader()));
            }

            @Override // va.d
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$x0$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0281b implements Parcelable.Creator<x0> {
            private C0281b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public x0 createFromParcel(Parcel parcel) {
                return new x0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public x0[] newArray(int i10) {
                return new x0[i10];
            }
        }

        public x0(Parcel parcel) {
            super(parcel, (ua.h) f35673q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public x0(Set set) {
            super(set, f35673q);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class y implements f.c<Integer> {
        private y() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Integer num) {
            return new x(num);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class y0 implements f.c<Set> {
        private y0() {
        }

        @Override // ua.f.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Parcelable a(Set set) {
            return new x0(set);
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class z extends q<LinkedHashMap> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final va.g f35674q = new a();
        public static final C0282b CREATOR = new C0282b();

        /* JADX INFO: compiled from: NonParcelRepository.java */
        static class a extends va.g {
            a() {
            }

            @Override // va.j
            public Object e(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void f(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }

            @Override // va.j
            public Object g(Parcel parcel) {
                return ua.f.a(parcel.readParcelable(j0.class.getClassLoader()));
            }

            @Override // va.j
            public void h(Object obj, Parcel parcel) {
                parcel.writeParcelable(ua.f.c(obj), 0);
            }
        }

        /* JADX INFO: renamed from: ua.b$z$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class C0282b implements Parcelable.Creator<z> {
            private C0282b() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public z createFromParcel(Parcel parcel) {
                return new z(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public z[] newArray(int i10) {
                return new z[i10];
            }
        }

        public z(Parcel parcel) {
            super(parcel, (ua.h) f35674q);
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        @Override // ua.b.q, android.os.Parcelable
        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
        }

        public z(LinkedHashMap linkedHashMap) {
            super(linkedHashMap, f35674q);
        }
    }

    private b() {
        HashMap map = new HashMap();
        this.f35648a = map;
        map.put(Collection.class, new p());
        map.put(List.class, new g0());
        map.put(ArrayList.class, new g0());
        map.put(Set.class, new o0());
        map.put(HashSet.class, new o0());
        map.put(TreeSet.class, new y0());
        map.put(SparseArray.class, new q0());
        map.put(Map.class, new k0());
        map.put(HashMap.class, new k0());
        map.put(TreeMap.class, new w0());
        map.put(Integer.class, new y());
        map.put(Long.class, new i0());
        map.put(Double.class, new s());
        map.put(Float.class, new u());
        map.put(Byte.class, new j());
        map.put(String.class, new u0());
        map.put(Character.class, new n());
        map.put(Boolean.class, new e());
        map.put(byte[].class, new h());
        map.put(char[].class, new l());
        map.put(boolean[].class, new c());
        map.put(IBinder.class, new w());
        map.put(Bundle.class, new f());
        map.put(SparseBooleanArray.class, new s0());
        map.put(LinkedList.class, new e0());
        map.put(LinkedHashMap.class, new a0());
        map.put(SortedMap.class, new w0());
        map.put(SortedSet.class, new y0());
        map.put(LinkedHashSet.class, new c0());
    }

    public static b a() {
        return f35647b;
    }

    @Override // ua.g
    public Map<Class, f.c> get() {
        return this.f35648a;
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class l0 implements Parcelable, ua.d<Parcelable> {
        public static final a CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private Parcelable f35659o;

        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class a implements Parcelable.Creator<l0> {
            private a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public l0 createFromParcel(Parcel parcel) {
                return new l0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public l0[] newArray(int i10) {
                return new l0[i10];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // ua.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Parcelable getParcel() {
            return this.f35659o;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f35659o, i10);
        }

        private l0(Parcel parcel) {
            this.f35659o = parcel.readParcelable(l0.class.getClassLoader());
        }

        private l0(Parcelable parcelable) {
            this.f35659o = parcelable;
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    private static class q<T> implements Parcelable, ua.d<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final T f35664o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final ua.h<T, T> f35665p;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // ua.d
        public T getParcel() {
            return this.f35664o;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            this.f35665p.b(this.f35664o, parcel);
        }

        private q(Parcel parcel, ua.h<T, T> hVar) {
            this(hVar.a(parcel), hVar);
        }

        private q(T t10, ua.h<T, T> hVar) {
            this.f35665p = hVar;
            this.f35664o = t10;
        }
    }

    /* JADX INFO: compiled from: NonParcelRepository.java */
    public static final class t0 implements Parcelable, ua.d<String> {
        public static final a CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f35669o;

        /* JADX INFO: compiled from: NonParcelRepository.java */
        private static final class a implements Parcelable.Creator<t0> {
            private a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public t0 createFromParcel(Parcel parcel) {
                return new t0(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public t0[] newArray(int i10) {
                return new t0[i10];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // ua.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public String getParcel() {
            return this.f35669o;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f35669o);
        }

        private t0(Parcel parcel) {
            this.f35669o = parcel.readString();
        }

        private t0(String str) {
            this.f35669o = str;
        }
    }
}
