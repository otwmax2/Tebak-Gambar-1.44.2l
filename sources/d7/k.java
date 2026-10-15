package d7;

import com.google.gson.u;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: compiled from: TimeTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k extends w<Time> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f28675b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f28676a = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: compiled from: TimeTypeAdapter.java */
    class a implements x {
        a() {
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            if (aVar.getRawType() == Time.class) {
                return new k();
            }
            return null;
        }
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public synchronized Time b(h7.a aVar) throws IOException {
        if (aVar.x() == h7.b.NULL) {
            aVar.t();
            return null;
        }
        try {
            return new Time(this.f28676a.parse(aVar.v()).getTime());
        } catch (ParseException e10) {
            throw new u(e10);
        }
    }

    @Override // com.google.gson.w
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public synchronized void d(h7.c cVar, Time time) throws IOException {
        cVar.A(time == null ? null : this.f28676a.format((Date) time));
    }
}
