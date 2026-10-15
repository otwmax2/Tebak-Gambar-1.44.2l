package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import com.facebook.AuthenticationTokenClaims;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: JobIntentService.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class h extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final Object f1998v = new Object();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final HashMap<ComponentName, AbstractC0025h> f1999w = new HashMap<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    b f2000o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    AbstractC0025h f2001p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    a f2002q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f2003r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f2004s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f2005t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final ArrayList<d> f2006u;

    /* JADX INFO: compiled from: JobIntentService.java */
    final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e eVarA = h.this.a();
                if (eVarA == null) {
                    return null;
                }
                h.this.g(eVarA.getIntent());
                eVarA.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r12) {
            h.this.i();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r12) {
            h.this.i();
        }
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    interface b {
        IBinder a();

        e b();
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    static final class c extends AbstractC0025h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Context f2008d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final PowerManager.WakeLock f2009e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final PowerManager.WakeLock f2010f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f2011g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f2012h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f2008d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f2009e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f2010f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.h.AbstractC0025h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f2023a);
            if (this.f2008d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f2011g) {
                        this.f2011g = true;
                        if (!this.f2012h) {
                            this.f2009e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.h.AbstractC0025h
        public void c() {
            synchronized (this) {
                if (this.f2012h) {
                    if (this.f2011g) {
                        this.f2009e.acquire(60000L);
                    }
                    this.f2012h = false;
                    this.f2010f.release();
                }
            }
        }

        @Override // androidx.core.app.h.AbstractC0025h
        public void d() {
            synchronized (this) {
                if (!this.f2012h) {
                    this.f2012h = true;
                    this.f2010f.acquire(AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED);
                    this.f2009e.release();
                }
            }
        }

        @Override // androidx.core.app.h.AbstractC0025h
        public void e() {
            synchronized (this) {
                this.f2011g = false;
            }
        }
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f2013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2014b;

        d(Intent intent, int i10) {
            this.f2013a = intent;
            this.f2014b = i10;
        }

        @Override // androidx.core.app.h.e
        public void a() {
            h.this.stopSelf(this.f2014b);
        }

        @Override // androidx.core.app.h.e
        public Intent getIntent() {
            return this.f2013a;
        }
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    interface e {
        void a();

        Intent getIntent();
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    static final class f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final h f2016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f2017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f2018c;

        /* JADX INFO: compiled from: JobIntentService.java */
        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f2019a;

            a(JobWorkItem jobWorkItem) {
                this.f2019a = jobWorkItem;
            }

            @Override // androidx.core.app.h.e
            public void a() {
                synchronized (f.this.f2017b) {
                    JobParameters jobParameters = f.this.f2018c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f2019a);
                    }
                }
            }

            @Override // androidx.core.app.h.e
            public Intent getIntent() {
                return this.f2019a.getIntent();
            }
        }

        f(h hVar) {
            super(hVar);
            this.f2017b = new Object();
            this.f2016a = hVar;
        }

        @Override // androidx.core.app.h.b
        public IBinder a() {
            return getBinder();
        }

        @Override // androidx.core.app.h.b
        public e b() {
            synchronized (this.f2017b) {
                JobParameters jobParameters = this.f2018c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f2016a.getClassLoader());
                return new a(jobWorkItemDequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f2018c = jobParameters;
            this.f2016a.e(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f2016a.b();
            synchronized (this.f2017b) {
                this.f2018c = null;
            }
            return zB;
        }
    }

    /* JADX INFO: compiled from: JobIntentService.java */
    static final class g extends AbstractC0025h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final JobInfo f2021d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final JobScheduler f2022e;

        g(Context context, ComponentName componentName, int i10) {
            super(componentName);
            b(i10);
            this.f2021d = new JobInfo.Builder(i10, this.f2023a).setOverrideDeadline(0L).build();
            this.f2022e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.h.AbstractC0025h
        void a(Intent intent) {
            this.f2022e.enqueue(this.f2021d, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JobIntentService.java */
    static abstract class AbstractC0025h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f2023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2025c;

        AbstractC0025h(ComponentName componentName) {
            this.f2023a = componentName;
        }

        abstract void a(Intent intent);

        void b(int i10) {
            if (!this.f2024b) {
                this.f2024b = true;
                this.f2025c = i10;
            } else {
                if (this.f2025c == i10) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i10 + " is different than previous " + this.f2025c);
            }
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }
    }

    public h() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2006u = null;
        } else {
            this.f2006u = new ArrayList<>();
        }
    }

    public static void c(Context context, ComponentName componentName, int i10, Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (f1998v) {
            AbstractC0025h abstractC0025hF = f(context, componentName, true, i10);
            abstractC0025hF.b(i10);
            abstractC0025hF.a(intent);
        }
    }

    public static void d(Context context, Class<?> cls, int i10, Intent intent) {
        c(context, new ComponentName(context, cls), i10, intent);
    }

    static AbstractC0025h f(Context context, ComponentName componentName, boolean z10, int i10) {
        AbstractC0025h cVar;
        HashMap<ComponentName, AbstractC0025h> map = f1999w;
        AbstractC0025h abstractC0025h = map.get(componentName);
        if (abstractC0025h != null) {
            return abstractC0025h;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else {
            if (!z10) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new g(context, componentName, i10);
        }
        AbstractC0025h abstractC0025h2 = cVar;
        map.put(componentName, abstractC0025h2);
        return abstractC0025h2;
    }

    e a() {
        b bVar = this.f2000o;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f2006u) {
            if (this.f2006u.size() <= 0) {
                return null;
            }
            return this.f2006u.remove(0);
        }
    }

    boolean b() {
        a aVar = this.f2002q;
        if (aVar != null) {
            aVar.cancel(this.f2003r);
        }
        this.f2004s = true;
        return h();
    }

    void e(boolean z10) {
        if (this.f2002q == null) {
            this.f2002q = new a();
            AbstractC0025h abstractC0025h = this.f2001p;
            if (abstractC0025h != null && z10) {
                abstractC0025h.d();
            }
            this.f2002q.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void g(Intent intent);

    public boolean h() {
        return true;
    }

    void i() {
        ArrayList<d> arrayList = this.f2006u;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2002q = null;
                ArrayList<d> arrayList2 = this.f2006u;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    e(false);
                } else if (!this.f2005t) {
                    this.f2001p.c();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f2000o;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2000o = new f(this);
            this.f2001p = null;
        } else {
            this.f2000o = null;
            this.f2001p = f(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.f2006u;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f2005t = true;
                this.f2001p.c();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (this.f2006u == null) {
            return 2;
        }
        this.f2001p.e();
        synchronized (this.f2006u) {
            ArrayList<d> arrayList = this.f2006u;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i11));
            e(true);
        }
        return 3;
    }
}
