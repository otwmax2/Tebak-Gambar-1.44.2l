package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: CalendarConstraints.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0116a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l f25307o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final l f25308p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final c f25309q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private l f25310r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f25311s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f25312t;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CalendarConstraints.java */
    static class C0116a implements Parcelable.Creator<a> {
        C0116a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a((l) parcel.readParcelable(l.class.getClassLoader()), (l) parcel.readParcelable(l.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (l) parcel.readParcelable(l.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* JADX INFO: compiled from: CalendarConstraints.java */
    public static final class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final long f25313e = s.a(l.L(1900, 0).f25393t);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f25314f = s.a(l.L(2100, 11).f25393t);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f25315a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f25316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f25317c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f25318d;

        b(a aVar) {
            this.f25315a = f25313e;
            this.f25316b = f25314f;
            this.f25318d = f.h(Long.MIN_VALUE);
            this.f25315a = aVar.f25307o.f25393t;
            this.f25316b = aVar.f25308p.f25393t;
            this.f25317c = Long.valueOf(aVar.f25310r.f25393t);
            this.f25318d = aVar.f25309q;
        }

        public a a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f25318d);
            l lVarN = l.N(this.f25315a);
            l lVarN2 = l.N(this.f25316b);
            c cVar = (c) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l10 = this.f25317c;
            return new a(lVarN, lVarN2, cVar, l10 == null ? null : l.N(l10.longValue()), null);
        }

        public b b(long j10) {
            this.f25317c = Long.valueOf(j10);
            return this;
        }
    }

    /* JADX INFO: compiled from: CalendarConstraints.java */
    public interface c extends Parcelable {
        boolean w2(long j10);
    }

    /* synthetic */ a(l lVar, l lVar2, c cVar, l lVar3, C0116a c0116a) {
        this(lVar, lVar2, cVar, lVar3);
    }

    int A() {
        return this.f25312t;
    }

    l B() {
        return this.f25310r;
    }

    l C() {
        return this.f25307o;
    }

    int D() {
        return this.f25311s;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25307o.equals(aVar.f25307o) && this.f25308p.equals(aVar.f25308p) && androidx.core.util.c.a(this.f25310r, aVar.f25310r) && this.f25309q.equals(aVar.f25309q);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f25307o, this.f25308p, this.f25310r, this.f25309q});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f25307o, 0);
        parcel.writeParcelable(this.f25308p, 0);
        parcel.writeParcelable(this.f25310r, 0);
        parcel.writeParcelable(this.f25309q, 0);
    }

    l x(l lVar) {
        return lVar.compareTo(this.f25307o) < 0 ? this.f25307o : lVar.compareTo(this.f25308p) > 0 ? this.f25308p : lVar;
    }

    public c y() {
        return this.f25309q;
    }

    l z() {
        return this.f25308p;
    }

    private a(l lVar, l lVar2, c cVar, l lVar3) {
        this.f25307o = lVar;
        this.f25308p = lVar2;
        this.f25310r = lVar3;
        this.f25309q = cVar;
        if (lVar3 != null && lVar.compareTo(lVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (lVar3 != null && lVar3.compareTo(lVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f25312t = lVar.c0(lVar2) + 1;
        this.f25311s = (lVar2.f25390q - lVar.f25390q) + 1;
    }
}
