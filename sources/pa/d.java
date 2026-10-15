package pa;

import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.model.CookieDBAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.u;

/* JADX INFO: compiled from: Hpack.java */
/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c[] f33575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Map<okio.f, Integer> f33576b;

    /* JADX INFO: compiled from: Hpack.java */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<c> f33577a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final okio.e f33578b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f33579c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f33580d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c[] f33581e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f33582f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f33583g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f33584h;

        a(int i10, u uVar) {
            this(i10, i10, uVar);
        }

        private void a() {
            int i10 = this.f33580d;
            int i11 = this.f33584h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        private void b() {
            Arrays.fill(this.f33581e, (Object) null);
            this.f33582f = this.f33581e.length - 1;
            this.f33583g = 0;
            this.f33584h = 0;
        }

        private int c(int i10) {
            return this.f33582f + 1 + i10;
        }

        private int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f33581e.length;
                while (true) {
                    length--;
                    i11 = this.f33582f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f33581e;
                    i10 -= cVarArr[length].f33574c;
                    this.f33584h -= cVarArr[length].f33574c;
                    this.f33583g--;
                    i12++;
                }
                c[] cVarArr2 = this.f33581e;
                System.arraycopy(cVarArr2, i11 + 1, cVarArr2, i11 + 1 + i12, this.f33583g);
                this.f33582f += i12;
            }
            return i12;
        }

        private okio.f f(int i10) throws IOException {
            if (h(i10)) {
                return d.f33575a[i10].f33572a;
            }
            int iC = c(i10 - d.f33575a.length);
            if (iC >= 0) {
                c[] cVarArr = this.f33581e;
                if (iC < cVarArr.length) {
                    return cVarArr[iC].f33572a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void g(int i10, c cVar) {
            this.f33577a.add(cVar);
            int i11 = cVar.f33574c;
            if (i10 != -1) {
                i11 -= this.f33581e[c(i10)].f33574c;
            }
            int i12 = this.f33580d;
            if (i11 > i12) {
                b();
                return;
            }
            int iD = d((this.f33584h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f33583g + 1;
                c[] cVarArr = this.f33581e;
                if (i13 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f33582f = this.f33581e.length - 1;
                    this.f33581e = cVarArr2;
                }
                int i14 = this.f33582f;
                this.f33582f = i14 - 1;
                this.f33581e[i14] = cVar;
                this.f33583g++;
            } else {
                this.f33581e[i10 + c(i10) + iD] = cVar;
            }
            this.f33584h += i11;
        }

        private boolean h(int i10) {
            return i10 >= 0 && i10 <= d.f33575a.length - 1;
        }

        private int i() throws IOException {
            return this.f33578b.readByte() & 255;
        }

        private void l(int i10) throws IOException {
            if (h(i10)) {
                this.f33577a.add(d.f33575a[i10]);
                return;
            }
            int iC = c(i10 - d.f33575a.length);
            if (iC >= 0) {
                c[] cVarArr = this.f33581e;
                if (iC < cVarArr.length) {
                    this.f33577a.add(cVarArr[iC]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void n(int i10) throws IOException {
            g(-1, new c(f(i10), j()));
        }

        private void o() throws IOException {
            g(-1, new c(d.a(j()), j()));
        }

        private void p(int i10) throws IOException {
            this.f33577a.add(new c(f(i10), j()));
        }

        private void q() throws IOException {
            this.f33577a.add(new c(d.a(j()), j()));
        }

        public List<c> e() {
            ArrayList arrayList = new ArrayList(this.f33577a);
            this.f33577a.clear();
            return arrayList;
        }

        okio.f j() throws IOException {
            int i10 = i();
            boolean z10 = (i10 & 128) == 128;
            int iM = m(i10, 127);
            return z10 ? okio.f.o(k.f().c(this.f33578b.N2(iM))) : this.f33578b.h0(iM);
        }

        void k() throws IOException {
            while (!this.f33578b.S0()) {
                int i10 = this.f33578b.readByte() & 255;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((i10 & 128) == 128) {
                    l(m(i10, 127) - 1);
                } else if (i10 == 64) {
                    o();
                } else if ((i10 & 64) == 64) {
                    n(m(i10, 63) - 1);
                } else if ((i10 & 32) == 32) {
                    int iM = m(i10, 31);
                    this.f33580d = iM;
                    if (iM < 0 || iM > this.f33579c) {
                        throw new IOException("Invalid dynamic table size update " + this.f33580d);
                    }
                    a();
                } else if (i10 == 16 || i10 == 0) {
                    q();
                } else {
                    p(m(i10, 15) - 1);
                }
            }
        }

        int m(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int i14 = i();
                if ((i14 & 128) == 0) {
                    return i11 + (i14 << i13);
                }
                i11 += (i14 & 127) << i13;
                i13 += 7;
            }
        }

        a(int i10, int i11, u uVar) {
            this.f33577a = new ArrayList();
            this.f33581e = new c[8];
            this.f33582f = r0.length - 1;
            this.f33583g = 0;
            this.f33584h = 0;
            this.f33579c = i10;
            this.f33580d = i11;
            this.f33578b = okio.n.c(uVar);
        }
    }

    /* JADX INFO: compiled from: Hpack.java */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final okio.c f33585a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f33586b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f33587c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f33588d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f33589e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f33590f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        c[] f33591g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f33592h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f33593i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f33594j;

        b(okio.c cVar) {
            this(4096, true, cVar);
        }

        private void a() {
            int i10 = this.f33590f;
            int i11 = this.f33594j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    c(i11 - i10);
                }
            }
        }

        private void b() {
            Arrays.fill(this.f33591g, (Object) null);
            this.f33592h = this.f33591g.length - 1;
            this.f33593i = 0;
            this.f33594j = 0;
        }

        private int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f33591g.length;
                while (true) {
                    length--;
                    i11 = this.f33592h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f33591g;
                    i10 -= cVarArr[length].f33574c;
                    this.f33594j -= cVarArr[length].f33574c;
                    this.f33593i--;
                    i12++;
                }
                c[] cVarArr2 = this.f33591g;
                System.arraycopy(cVarArr2, i11 + 1, cVarArr2, i11 + 1 + i12, this.f33593i);
                c[] cVarArr3 = this.f33591g;
                int i13 = this.f33592h;
                Arrays.fill(cVarArr3, i13 + 1, i13 + 1 + i12, (Object) null);
                this.f33592h += i12;
            }
            return i12;
        }

        private void d(c cVar) {
            int i10 = cVar.f33574c;
            int i11 = this.f33590f;
            if (i10 > i11) {
                b();
                return;
            }
            c((this.f33594j + i10) - i11);
            int i12 = this.f33593i + 1;
            c[] cVarArr = this.f33591g;
            if (i12 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f33592h = this.f33591g.length - 1;
                this.f33591g = cVarArr2;
            }
            int i13 = this.f33592h;
            this.f33592h = i13 - 1;
            this.f33591g[i13] = cVar;
            this.f33593i++;
            this.f33594j += i10;
        }

        void e(int i10) {
            this.f33589e = i10;
            int iMin = Math.min(i10, 16384);
            int i11 = this.f33590f;
            if (i11 == iMin) {
                return;
            }
            if (iMin < i11) {
                this.f33587c = Math.min(this.f33587c, iMin);
            }
            this.f33588d = true;
            this.f33590f = iMin;
            a();
        }

        void f(okio.f fVar) throws IOException {
            if (!this.f33586b || k.f().e(fVar) >= fVar.J()) {
                h(fVar.J(), 127, 0);
                this.f33585a.c3(fVar);
                return;
            }
            okio.c cVar = new okio.c();
            k.f().d(fVar, cVar);
            okio.f fVarM = cVar.m();
            h(fVarM.J(), 127, 128);
            this.f33585a.c3(fVarM);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void g(java.util.List<pa.c> r14) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 236
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: pa.d.b.g(java.util.List):void");
        }

        void h(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f33585a.T0(i10 | i12);
                return;
            }
            this.f33585a.T0(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f33585a.T0(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f33585a.T0(i13);
        }

        b(int i10, boolean z10, okio.c cVar) {
            this.f33587c = Integer.MAX_VALUE;
            this.f33591g = new c[8];
            this.f33592h = r0.length - 1;
            this.f33593i = 0;
            this.f33594j = 0;
            this.f33589e = i10;
            this.f33590f = i10;
            this.f33586b = z10;
            this.f33585a = cVar;
        }
    }

    static {
        okio.f fVar = c.f33568f;
        okio.f fVar2 = c.f33569g;
        okio.f fVar3 = c.f33570h;
        okio.f fVar4 = c.f33567e;
        f33575a = new c[]{new c(c.f33571i, BuildConfig.FLAVOR), new c(fVar, "GET"), new c(fVar, "POST"), new c(fVar2, "/"), new c(fVar2, "/index.html"), new c(fVar3, "http"), new c(fVar3, TournamentShareDialogURIBuilder.scheme), new c(fVar4, "200"), new c(fVar4, "204"), new c(fVar4, "206"), new c(fVar4, "304"), new c(fVar4, "400"), new c(fVar4, "404"), new c(fVar4, "500"), new c("accept-charset", BuildConfig.FLAVOR), new c("accept-encoding", "gzip, deflate"), new c("accept-language", BuildConfig.FLAVOR), new c("accept-ranges", BuildConfig.FLAVOR), new c("accept", BuildConfig.FLAVOR), new c("access-control-allow-origin", BuildConfig.FLAVOR), new c("age", BuildConfig.FLAVOR), new c("allow", BuildConfig.FLAVOR), new c("authorization", BuildConfig.FLAVOR), new c("cache-control", BuildConfig.FLAVOR), new c("content-disposition", BuildConfig.FLAVOR), new c("content-encoding", BuildConfig.FLAVOR), new c("content-language", BuildConfig.FLAVOR), new c("content-length", BuildConfig.FLAVOR), new c("content-location", BuildConfig.FLAVOR), new c("content-range", BuildConfig.FLAVOR), new c("content-type", BuildConfig.FLAVOR), new c(CookieDBAdapter.CookieColumns.TABLE_NAME, BuildConfig.FLAVOR), new c("date", BuildConfig.FLAVOR), new c("etag", BuildConfig.FLAVOR), new c("expect", BuildConfig.FLAVOR), new c("expires", BuildConfig.FLAVOR), new c("from", BuildConfig.FLAVOR), new c("host", BuildConfig.FLAVOR), new c("if-match", BuildConfig.FLAVOR), new c("if-modified-since", BuildConfig.FLAVOR), new c("if-none-match", BuildConfig.FLAVOR), new c("if-range", BuildConfig.FLAVOR), new c("if-unmodified-since", BuildConfig.FLAVOR), new c("last-modified", BuildConfig.FLAVOR), new c("link", BuildConfig.FLAVOR), new c("location", BuildConfig.FLAVOR), new c("max-forwards", BuildConfig.FLAVOR), new c("proxy-authenticate", BuildConfig.FLAVOR), new c("proxy-authorization", BuildConfig.FLAVOR), new c("range", BuildConfig.FLAVOR), new c("referer", BuildConfig.FLAVOR), new c("refresh", BuildConfig.FLAVOR), new c("retry-after", BuildConfig.FLAVOR), new c("server", BuildConfig.FLAVOR), new c("set-cookie", BuildConfig.FLAVOR), new c("strict-transport-security", BuildConfig.FLAVOR), new c("transfer-encoding", BuildConfig.FLAVOR), new c("user-agent", BuildConfig.FLAVOR), new c("vary", BuildConfig.FLAVOR), new c("via", BuildConfig.FLAVOR), new c("www-authenticate", BuildConfig.FLAVOR)};
        f33576b = b();
    }

    static okio.f a(okio.f fVar) throws IOException {
        int iJ = fVar.J();
        for (int i10 = 0; i10 < iJ; i10++) {
            byte bM = fVar.m(i10);
            if (bM >= 65 && bM <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.O());
            }
        }
        return fVar;
    }

    private static Map<okio.f, Integer> b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f33575a.length);
        int i10 = 0;
        while (true) {
            c[] cVarArr = f33575a;
            if (i10 >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i10].f33572a)) {
                linkedHashMap.put(cVarArr[i10].f33572a, Integer.valueOf(i10));
            }
            i10++;
        }
    }
}
