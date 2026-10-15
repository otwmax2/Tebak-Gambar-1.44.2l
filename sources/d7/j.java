package d7;

import com.google.gson.u;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: compiled from: SqlDateTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class j extends w<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f28673b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f28674a = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: compiled from: SqlDateTypeAdapter.java */
    class a implements x {
        a() {
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new j();
            }
            return null;
        }
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public synchronized Date b(h7.a aVar) throws IOException {
        if (aVar.x() == h7.b.NULL) {
            aVar.t();
            return null;
        }
        try {
            return new Date(this.f28674a.parse(aVar.v()).getTime());
        } catch (ParseException e10) {
            throw new u(e10);
        }
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public synchronized void d(h7.c cVar, Date date) throws IOException {
        cVar.A(date == null ? null : this.f28674a.format((java.util.Date) date));
    }
}
