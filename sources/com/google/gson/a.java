package com.google.gson;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: DefaultDateTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends w<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<? extends Date> f26680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<DateFormat> f26681b;

    a(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f26681b = arrayList;
        this.f26680a = g(cls);
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private Date e(String str) {
        synchronized (this.f26681b) {
            Iterator<DateFormat> it = this.f26681b.iterator();
            while (it.hasNext()) {
                try {
                    return it.next().parse(str);
                } catch (ParseException unused) {
                }
            }
            try {
                return e7.a.c(str, new ParsePosition(0));
            } catch (ParseException e10) {
                throw new u(str, e10);
            }
        }
    }

    private static Class<? extends Date> g(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Date b(h7.a aVar) throws IOException {
        if (aVar.x() == h7.b.NULL) {
            aVar.t();
            return null;
        }
        Date dateE = e(aVar.v());
        Class<? extends Date> cls = this.f26680a;
        if (cls == Date.class) {
            return dateE;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(dateE.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(dateE.getTime());
        }
        throw new AssertionError();
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void d(h7.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.n();
            return;
        }
        synchronized (this.f26681b) {
            cVar.A(this.f26681b.get(0).format(date));
        }
    }

    public String toString() {
        DateFormat dateFormat = this.f26681b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    public a(Class<? extends Date> cls, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f26681b = arrayList;
        this.f26680a = g(cls);
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (c7.e.e()) {
            arrayList.add(c7.j.c(i10, i11));
        }
    }
}
