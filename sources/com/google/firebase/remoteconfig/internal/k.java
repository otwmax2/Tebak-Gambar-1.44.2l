package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.internal.n;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ConfigFetchHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f26636j = TimeUnit.HOURS.toSeconds(12);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int[] f26637k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l6.e f26638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k6.b<e5.a> f26639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f26640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Clock f26641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Random f26642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f26643f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConfigFetchHttpClient f26644g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n f26645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map<String, String> f26646i;

    /* JADX INFO: compiled from: ConfigFetchHandler.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Date f26647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f26648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f26649c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f26650d;

        private a(Date date, int i10, f fVar, String str) {
            this.f26647a = date;
            this.f26648b = i10;
            this.f26649c = fVar;
            this.f26650d = str;
        }

        public static a a(Date date) {
            return new a(date, 1, null, null);
        }

        public static a b(f fVar, String str) {
            return new a(fVar.e(), 0, fVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        public f d() {
            return this.f26649c;
        }

        String e() {
            return this.f26650d;
        }

        int f() {
            return this.f26648b;
        }
    }

    public k(l6.e eVar, k6.b<e5.a> bVar, Executor executor, Clock clock, Random random, e eVar2, ConfigFetchHttpClient configFetchHttpClient, n nVar, Map<String, String> map) {
        this.f26638a = eVar;
        this.f26639b = bVar;
        this.f26640c = executor;
        this.f26641d = clock;
        this.f26642e = random;
        this.f26643f = eVar2;
        this.f26644g = configFetchHttpClient;
        this.f26645h = nVar;
        this.f26646i = map;
    }

    private boolean e(long j10, Date date) {
        Date dateD = this.f26645h.d();
        if (dateD.equals(n.f26661d)) {
            return false;
        }
        return date.before(new Date(dateD.getTime() + TimeUnit.SECONDS.toMillis(j10)));
    }

    private u6.i f(u6.i iVar) throws u6.f {
        String str;
        int iA = iVar.a();
        if (iA == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (iA == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else {
            if (iA == 429) {
                throw new u6.f("The throttled response from the server was not handled correctly by the FRC SDK.");
            }
            if (iA != 500) {
                switch (iA) {
                    case 502:
                    case 503:
                    case 504:
                        str = "The server is unavailable. Please try again later.";
                        break;
                    default:
                        str = "The server returned an unexpected error.";
                        break;
                }
            } else {
                str = "There was an internal server error.";
            }
        }
        return new u6.i(iVar.a(), "Fetch failed: " + str, iVar);
    }

    private String g(long j10) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j10)));
    }

    private a i(String str, String str2, Date date) throws u6.g {
        try {
            a aVarFetch = this.f26644g.fetch(this.f26644g.c(), str, str2, n(), this.f26645h.c(), this.f26646i, date);
            if (aVarFetch.e() != null) {
                this.f26645h.h(aVarFetch.e());
            }
            this.f26645h.e();
            return aVarFetch;
        } catch (u6.i e10) {
            n.a aVarU = u(e10.a(), date);
            if (t(aVarU, e10.a())) {
                throw new u6.h(aVarU.a().getTime());
            }
            throw f(e10);
        }
    }

    private Task<a> j(String str, String str2, Date date) {
        try {
            final a aVarI = i(str, str2, date);
            return aVarI.f() != 0 ? Tasks.e(aVarI) : this.f26643f.k(aVarI.d()).v(this.f26640c, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.j
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task a(Object obj) {
                    return k.q(aVarI, (f) obj);
                }
            });
        } catch (u6.g e10) {
            return Tasks.d(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Task<a> p(Task<f> task, long j10) {
        Task taskN;
        final Date date = new Date(this.f26641d.a());
        if (task.t() && e(j10, date)) {
            return Tasks.e(a.c(date));
        }
        Date dateL = l(date);
        if (dateL != null) {
            taskN = Tasks.d(new u6.h(g(dateL.getTime() - date.getTime()), dateL.getTime()));
        } else {
            final Task<String> taskA = this.f26638a.a();
            final Task<com.google.firebase.installations.g> taskB = this.f26638a.b(false);
            taskN = Tasks.i(taskA, taskB).n(this.f26640c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.h
                @Override // com.google.android.gms.tasks.Continuation
                public final Object a(Task task2) {
                    return this.f26629a.r(taskA, taskB, date, task2);
                }
            });
        }
        return taskN.n(this.f26640c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.i
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task2) {
                return this.f26633a.s(date, task2);
            }
        });
    }

    private Date l(Date date) {
        Date dateA = this.f26645h.a().a();
        if (date.before(dateA)) {
            return dateA;
        }
        return null;
    }

    private long m(int i10) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f26637k;
        long millis = timeUnit.toMillis(iArr[Math.min(i10, iArr.length) - 1]);
        return (millis / 2) + ((long) this.f26642e.nextInt((int) millis));
    }

    private Map<String, String> n() {
        HashMap map = new HashMap();
        e5.a aVar = this.f26639b.get();
        if (aVar == null) {
            return map;
        }
        for (Map.Entry<String, Object> entry : aVar.a(false).entrySet()) {
            map.put(entry.getKey(), entry.getValue().toString());
        }
        return map;
    }

    private boolean o(int i10) {
        return i10 == 429 || i10 == 502 || i10 == 503 || i10 == 504;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task q(a aVar, f fVar) throws Exception {
        return Tasks.e(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task r(Task task, Task task2, Date date, Task task3) throws Exception {
        return !task.t() ? Tasks.d(new u6.f("Firebase Installations failed to get installation ID for fetch.", task.o())) : !task2.t() ? Tasks.d(new u6.f("Firebase Installations failed to get installation auth token for fetch.", task2.o())) : j((String) task.p(), ((com.google.firebase.installations.g) task2.p()).b(), date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task s(Date date, Task task) throws Exception {
        w(task, date);
        return task;
    }

    private boolean t(n.a aVar, int i10) {
        return aVar.b() > 1 || i10 == 429;
    }

    private n.a u(int i10, Date date) {
        if (o(i10)) {
            v(date);
        }
        return this.f26645h.a();
    }

    private void v(Date date) {
        int iB = this.f26645h.a().b() + 1;
        this.f26645h.f(iB, new Date(date.getTime() + m(iB)));
    }

    private void w(Task<a> task, Date date) {
        if (task.t()) {
            this.f26645h.j(date);
            return;
        }
        Exception excO = task.o();
        if (excO == null) {
            return;
        }
        if (excO instanceof u6.h) {
            this.f26645h.k();
        } else {
            this.f26645h.i();
        }
    }

    public Task<a> h(final long j10) {
        return this.f26643f.e().n(this.f26640c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.g
            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task) {
                return this.f26627a.p(j10, task);
            }
        });
    }
}
