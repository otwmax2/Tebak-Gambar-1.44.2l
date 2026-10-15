package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: TaskStackBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements Iterable<Intent> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ArrayList<Intent> f2126o = new ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f2127p;

    /* JADX INFO: compiled from: TaskStackBuilder.java */
    public interface a {
        Intent t();
    }

    private t(Context context) {
        this.f2127p = context;
    }

    public static t k(Context context) {
        return new t(context);
    }

    public t c(Intent intent) {
        this.f2126o.add(intent);
        return this;
    }

    public t g(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f2127p.getPackageManager());
        }
        if (component != null) {
            j(component);
        }
        c(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t i(Activity activity) {
        Intent intentT = activity instanceof a ? ((a) activity).t() : null;
        if (intentT == null) {
            intentT = j.a(activity);
        }
        if (intentT != null) {
            ComponentName component = intentT.getComponent();
            if (component == null) {
                component = intentT.resolveActivity(this.f2127p.getPackageManager());
            }
            j(component);
            c(intentT);
        }
        return this;
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f2126o.iterator();
    }

    public t j(ComponentName componentName) {
        int size = this.f2126o.size();
        try {
            Intent intentB = j.b(this.f2127p, componentName);
            while (intentB != null) {
                this.f2126o.add(size, intentB);
                intentB = j.b(this.f2127p, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e10);
        }
    }

    public void l() {
        m(null);
    }

    public void m(Bundle bundle) {
        if (this.f2126o.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.f2126o.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.content.a.k(this.f2127p, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f2127p.startActivity(intent);
    }
}
