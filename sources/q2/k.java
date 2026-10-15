package q2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: RequestManagerRetriever.java */
/* JADX INFO: loaded from: classes.dex */
public class k implements Handler.Callback {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final k f33847s = new k();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile v1.j f33848o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Map<FragmentManager, j> f33849p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final Map<androidx.fragment.app.n, n> f33850q = new HashMap();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Handler f33851r = new Handler(Looper.getMainLooper(), this);

    k() {
    }

    @TargetApi(17)
    private static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    public static k c() {
        return f33847s;
    }

    private v1.j g(Context context) {
        if (this.f33848o == null) {
            synchronized (this) {
                if (this.f33848o == null) {
                    this.f33848o = new v1.j(context.getApplicationContext(), new b(), new f());
                }
            }
        }
        return this.f33848o;
    }

    @TargetApi(11)
    v1.j b(Context context, FragmentManager fragmentManager) {
        j jVarH = h(fragmentManager);
        v1.j jVarC = jVarH.c();
        if (jVarC != null) {
            return jVarC;
        }
        v1.j jVar = new v1.j(context, jVarH.b(), jVarH.d());
        jVarH.f(jVar);
        return jVar;
    }

    @TargetApi(11)
    public v1.j d(Activity activity) {
        if (x2.h.i() || Build.VERSION.SDK_INT < 11) {
            return e(activity.getApplicationContext());
        }
        a(activity);
        return b(activity, activity.getFragmentManager());
    }

    public v1.j e(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (x2.h.j() && !(context instanceof Application)) {
            if (context instanceof androidx.fragment.app.e) {
                return f((androidx.fragment.app.e) context);
            }
            if (context instanceof Activity) {
                return d((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return e(((ContextWrapper) context).getBaseContext());
            }
        }
        return g(context);
    }

    public v1.j f(androidx.fragment.app.e eVar) {
        if (x2.h.i()) {
            return e(eVar.getApplicationContext());
        }
        a(eVar);
        return j(eVar, eVar.getSupportFragmentManager());
    }

    @TargetApi(17)
    j h(FragmentManager fragmentManager) {
        j jVar = (j) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = this.f33849p.get(fragmentManager);
        if (jVar2 != null) {
            return jVar2;
        }
        j jVar3 = new j();
        this.f33849p.put(fragmentManager, jVar3);
        fragmentManager.beginTransaction().add(jVar3, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.f33851r.obtainMessage(1, fragmentManager).sendToTarget();
        return jVar3;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Object objRemove;
        Object obj2;
        int i10 = message.what;
        Object obj3 = null;
        boolean z10 = true;
        if (i10 == 1) {
            obj = (FragmentManager) message.obj;
            objRemove = this.f33849p.remove(obj);
        } else {
            if (i10 != 2) {
                z10 = false;
                obj2 = null;
                if (z10 && obj3 == null && Log.isLoggable("RMRetriever", 5)) {
                    Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj2);
                }
                return z10;
            }
            obj = (androidx.fragment.app.n) message.obj;
            objRemove = this.f33850q.remove(obj);
        }
        Object obj4 = obj;
        obj3 = objRemove;
        obj2 = obj4;
        if (z10) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj2);
        }
        return z10;
    }

    n i(androidx.fragment.app.n nVar) {
        n nVar2 = (n) nVar.i0("com.bumptech.glide.manager");
        if (nVar2 != null) {
            return nVar2;
        }
        n nVar3 = this.f33850q.get(nVar);
        if (nVar3 != null) {
            return nVar3;
        }
        n nVar4 = new n();
        this.f33850q.put(nVar, nVar4);
        nVar.m().d(nVar4, "com.bumptech.glide.manager").g();
        this.f33851r.obtainMessage(2, nVar).sendToTarget();
        return nVar4;
    }

    v1.j j(Context context, androidx.fragment.app.n nVar) {
        n nVarI = i(nVar);
        v1.j jVarQ = nVarI.q();
        if (jVarQ != null) {
            return jVarQ;
        }
        v1.j jVar = new v1.j(context, nVarI.p(), nVarI.r());
        nVarI.t(jVar);
        return jVar;
    }
}
