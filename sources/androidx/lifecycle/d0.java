package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.h0;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.lang.reflect.Constructor;

/* JADX INFO: compiled from: SavedStateViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends h0.d implements h0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Application f3508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h0.b f3509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f3510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f3511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a1.c f3512f;

    @SuppressLint({"LambdaLast"})
    public d0(Application application, a1.e eVar, Bundle bundle) {
        t9.m.e(eVar, "owner");
        this.f3512f = eVar.getSavedStateRegistry();
        this.f3511e = eVar.getLifecycle();
        this.f3510d = bundle;
        this.f3508b = application;
        this.f3509c = application != null ? h0.a.f3527f.b(application) : new h0.a();
    }

    @Override // androidx.lifecycle.h0.b
    public <T extends g0> T a(Class<T> cls) {
        t9.m.e(cls, "modelClass");
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) d(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.h0.b
    public <T extends g0> T b(Class<T> cls, s0.a aVar) {
        t9.m.e(cls, "modelClass");
        t9.m.e(aVar, "extras");
        String str = (String) aVar.a(h0.c.f3536d);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (aVar.a(a0.f3491a) == null || aVar.a(a0.f3492b) == null) {
            if (this.f3511e != null) {
                return (T) d(str, cls);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) aVar.a(h0.a.f3529h);
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorC = (!zIsAssignableFrom || application == null) ? e0.c(cls, e0.f3514b) : e0.c(cls, e0.f3513a);
        return constructorC == null ? (T) this.f3509c.b(cls, aVar) : (!zIsAssignableFrom || application == null) ? (T) e0.d(cls, constructorC, a0.b(aVar)) : (T) e0.d(cls, constructorC, application, a0.b(aVar));
    }

    @Override // androidx.lifecycle.h0.d
    public void c(g0 g0Var) {
        t9.m.e(g0Var, "viewModel");
        j jVar = this.f3511e;
        if (jVar != null) {
            LegacySavedStateHandleController.a(g0Var, this.f3512f, jVar);
        }
    }

    public final <T extends g0> T d(String str, Class<T> cls) {
        T t10;
        Application application;
        t9.m.e(str, SDKConstants.PARAM_KEY);
        t9.m.e(cls, "modelClass");
        if (this.f3511e == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorC = (!zIsAssignableFrom || this.f3508b == null) ? e0.c(cls, e0.f3514b) : e0.c(cls, e0.f3513a);
        if (constructorC == null) {
            return this.f3508b != null ? (T) this.f3509c.a(cls) : (T) h0.c.f3534b.a().a(cls);
        }
        SavedStateHandleController savedStateHandleControllerB = LegacySavedStateHandleController.b(this.f3512f, this.f3511e, str, this.f3510d);
        if (!zIsAssignableFrom || (application = this.f3508b) == null) {
            z zVarI = savedStateHandleControllerB.i();
            t9.m.d(zVarI, "controller.handle");
            t10 = (T) e0.d(cls, constructorC, zVarI);
        } else {
            t9.m.b(application);
            z zVarI2 = savedStateHandleControllerB.i();
            t9.m.d(zVarI2, "controller.handle");
            t10 = (T) e0.d(cls, constructorC, application, zVarI2);
        }
        t10.i("androidx.lifecycle.savedstate.vm.tag", savedStateHandleControllerB);
        return t10;
    }
}
