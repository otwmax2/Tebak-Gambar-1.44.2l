package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.j;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Random f226a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, String> f227b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Map<String, Integer> f228c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, d> f229d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<String> f230e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient Map<String, c<?>> f231f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<String, Object> f232g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Bundle f233h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    class a<I> extends androidx.activity.result.c<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f238a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e.a f239b;

        a(String str, e.a aVar) {
            this.f238a = str;
            this.f239b = aVar;
        }

        @Override // androidx.activity.result.c
        public e.a<I, ?> a() {
            return this.f239b;
        }

        @Override // androidx.activity.result.c
        public void c(I i10, androidx.core.app.c cVar) throws Exception {
            Integer num = ActivityResultRegistry.this.f228c.get(this.f238a);
            if (num != null) {
                ActivityResultRegistry.this.f230e.add(this.f238a);
                try {
                    ActivityResultRegistry.this.f(num.intValue(), this.f239b, i10, cVar);
                    return;
                } catch (Exception e10) {
                    ActivityResultRegistry.this.f230e.remove(this.f238a);
                    throw e10;
                }
            }
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + this.f239b + " and input " + i10 + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }

        @Override // androidx.activity.result.c
        public void d() {
            ActivityResultRegistry.this.l(this.f238a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    class b<I> extends androidx.activity.result.c<I> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e.a f242b;

        b(String str, e.a aVar) {
            this.f241a = str;
            this.f242b = aVar;
        }

        @Override // androidx.activity.result.c
        public e.a<I, ?> a() {
            return this.f242b;
        }

        @Override // androidx.activity.result.c
        public void c(I i10, androidx.core.app.c cVar) {
            Integer num = ActivityResultRegistry.this.f228c.get(this.f241a);
            if (num != null) {
                ActivityResultRegistry.this.f230e.add(this.f241a);
                ActivityResultRegistry.this.f(num.intValue(), this.f242b, i10, cVar);
                return;
            }
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + this.f242b + " and input " + i10 + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }

        @Override // androidx.activity.result.c
        public void d() {
            ActivityResultRegistry.this.l(this.f241a);
        }
    }

    private static class c<O> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final androidx.activity.result.b<O> f244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final e.a<?, O> f245b;

        c(androidx.activity.result.b<O> bVar, e.a<?, O> aVar) {
            this.f244a = bVar;
            this.f245b = aVar;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final j f246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<l> f247b = new ArrayList<>();

        d(j jVar) {
            this.f246a = jVar;
        }

        void a(l lVar) {
            this.f246a.a(lVar);
            this.f247b.add(lVar);
        }

        void b() {
            Iterator<l> it = this.f247b.iterator();
            while (it.hasNext()) {
                this.f246a.c(it.next());
            }
            this.f247b.clear();
        }
    }

    private void a(int i10, String str) {
        this.f227b.put(Integer.valueOf(i10), str);
        this.f228c.put(str, Integer.valueOf(i10));
    }

    private <O> void d(String str, int i10, Intent intent, c<O> cVar) {
        if (cVar == null || cVar.f244a == null || !this.f230e.contains(str)) {
            this.f232g.remove(str);
            this.f233h.putParcelable(str, new androidx.activity.result.a(i10, intent));
        } else {
            cVar.f244a.a(cVar.f245b.parseResult(i10, intent));
            this.f230e.remove(str);
        }
    }

    private int e() {
        int iNextInt = this.f226a.nextInt(2147418112);
        while (true) {
            int i10 = iNextInt + NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
            if (!this.f227b.containsKey(Integer.valueOf(i10))) {
                return i10;
            }
            iNextInt = this.f226a.nextInt(2147418112);
        }
    }

    private void k(String str) {
        if (this.f228c.get(str) != null) {
            return;
        }
        a(e(), str);
    }

    public final boolean b(int i10, int i11, Intent intent) {
        String str = this.f227b.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        d(str, i11, intent, this.f231f.get(str));
        return true;
    }

    public final <O> boolean c(int i10, @SuppressLint({"UnknownNullness"}) O o10) {
        androidx.activity.result.b<?> bVar;
        String str = this.f227b.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        c<?> cVar = this.f231f.get(str);
        if (cVar == null || (bVar = cVar.f244a) == null) {
            this.f233h.remove(str);
            this.f232g.put(str, o10);
            return true;
        }
        if (!this.f230e.remove(str)) {
            return true;
        }
        bVar.a(o10);
        return true;
    }

    public abstract <I, O> void f(int i10, e.a<I, O> aVar, @SuppressLint({"UnknownNullness"}) I i11, androidx.core.app.c cVar);

    public final void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f230e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f226a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f233h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
        for (int i10 = 0; i10 < stringArrayList.size(); i10++) {
            String str = stringArrayList.get(i10);
            if (this.f228c.containsKey(str)) {
                Integer numRemove = this.f228c.remove(str);
                if (!this.f233h.containsKey(str)) {
                    this.f227b.remove(numRemove);
                }
            }
            a(integerArrayList.get(i10).intValue(), stringArrayList.get(i10));
        }
    }

    public final void h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f228c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f228c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f230e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f233h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f226a);
    }

    public final <I, O> androidx.activity.result.c<I> i(final String str, n nVar, final e.a<I, O> aVar, final androidx.activity.result.b<O> bVar) {
        j lifecycle = nVar.getLifecycle();
        if (lifecycle.b().c(j.c.STARTED)) {
            throw new IllegalStateException("LifecycleOwner " + nVar + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.");
        }
        k(str);
        d dVar = this.f229d.get(str);
        if (dVar == null) {
            dVar = new d(lifecycle);
        }
        dVar.a(new l() { // from class: androidx.activity.result.ActivityResultRegistry.1
            @Override // androidx.lifecycle.l
            public void c(n nVar2, j.b bVar2) {
                if (!j.b.ON_START.equals(bVar2)) {
                    if (j.b.ON_STOP.equals(bVar2)) {
                        ActivityResultRegistry.this.f231f.remove(str);
                        return;
                    } else {
                        if (j.b.ON_DESTROY.equals(bVar2)) {
                            ActivityResultRegistry.this.l(str);
                            return;
                        }
                        return;
                    }
                }
                ActivityResultRegistry.this.f231f.put(str, new c<>(bVar, aVar));
                if (ActivityResultRegistry.this.f232g.containsKey(str)) {
                    Object obj = ActivityResultRegistry.this.f232g.get(str);
                    ActivityResultRegistry.this.f232g.remove(str);
                    bVar.a(obj);
                }
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) ActivityResultRegistry.this.f233h.getParcelable(str);
                if (aVar2 != null) {
                    ActivityResultRegistry.this.f233h.remove(str);
                    bVar.a(aVar.parseResult(aVar2.t(), aVar2.h()));
                }
            }
        });
        this.f229d.put(str, dVar);
        return new a(str, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> androidx.activity.result.c<I> j(String str, e.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        k(str);
        this.f231f.put(str, new c<>(bVar, aVar));
        if (this.f232g.containsKey(str)) {
            Object obj = this.f232g.get(str);
            this.f232g.remove(str);
            bVar.a(obj);
        }
        androidx.activity.result.a aVar2 = (androidx.activity.result.a) this.f233h.getParcelable(str);
        if (aVar2 != null) {
            this.f233h.remove(str);
            bVar.a(aVar.parseResult(aVar2.t(), aVar2.h()));
        }
        return new b(str, aVar);
    }

    final void l(String str) {
        Integer numRemove;
        if (!this.f230e.contains(str) && (numRemove = this.f228c.remove(str)) != null) {
            this.f227b.remove(numRemove);
        }
        this.f231f.remove(str);
        if (this.f232g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f232g.get(str));
            this.f232g.remove(str);
        }
        if (this.f233h.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.f233h.getParcelable(str));
            this.f233h.remove(str);
        }
        d dVar = this.f229d.get(str);
        if (dVar != null) {
            dVar.b();
            this.f229d.remove(str);
        }
    }
}
