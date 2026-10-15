package d7;

import com.google.gson.u;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: DateTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c extends w<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f28643b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<DateFormat> f28644a;

    /* JADX INFO: compiled from: DateTypeAdapter.java */
    class a implements x {
        a() {
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f28644a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (c7.e.e()) {
            arrayList.add(c7.j.c(2, 2));
        }
    }

    private synchronized Date e(String str) {
        Iterator<DateFormat> it = this.f28644a.iterator();
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

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Date b(h7.a aVar) throws IOException {
        if (aVar.x() != h7.b.NULL) {
            return e(aVar.v());
        }
        aVar.t();
        return null;
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public synchronized void d(h7.c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.n();
        } else {
            cVar.A(this.f28644a.get(0).format(date));
        }
    }
}
