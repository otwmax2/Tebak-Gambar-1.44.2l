package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: ContextThemeWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Resources.Theme f515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LayoutInflater f516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Configuration f517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Resources f518g;

    /* JADX INFO: compiled from: ContextThemeWrapper.java */
    static class a {
        static Context a(d dVar, Configuration configuration) {
            return dVar.createConfigurationContext(configuration);
        }
    }

    public d() {
        super(null);
        this.f512a = false;
        this.f513b = false;
    }

    private Resources b() {
        if (this.f518g == null) {
            if (this.f517f == null) {
                this.f518g = super.getResources();
            } else if (Build.VERSION.SDK_INT < 17 || !g()) {
                Resources resources = super.getResources();
                Configuration configuration = new Configuration(resources.getConfiguration());
                configuration.updateFrom(this.f517f);
                this.f518g = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration);
            } else {
                this.f518g = a.a(this, this.f517f).getResources();
            }
        }
        return this.f518g;
    }

    private void d() {
        boolean z10 = this.f515d == null;
        if (z10) {
            this.f515d = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f515d.setTo(theme);
            }
        }
        f(this.f515d, this.f514c, z10);
    }

    private static boolean e(Configuration configuration) {
        return configuration.uiMode == 0 && configuration.locale == null;
    }

    private boolean g() {
        return (this.f512a && this.f513b && e(this.f517f)) ? false : true;
    }

    public void a(Configuration configuration) {
        if (this.f518g != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f517f != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f517f = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.f514c;
    }

    protected void f(Resources.Theme theme, int i10, boolean z10) {
        theme.applyStyle(i10, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f516e == null) {
            this.f516e = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f516e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f515d;
        if (theme != null) {
            return theme;
        }
        if (this.f514c == 0) {
            this.f514c = f.i.f29114d;
        }
        d();
        return this.f515d;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i10) {
        if (this.f514c != i10) {
            this.f514c = i10;
            d();
        }
    }

    public d(Context context, int i10) {
        super(context);
        this.f514c = i10;
        this.f512a = false;
        this.f513b = false;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f515d = theme;
        this.f512a = false;
        this.f513b = false;
    }

    public d(Context context, int i10, boolean z10) {
        super(context);
        this.f514c = i10;
        this.f512a = true;
        this.f513b = z10;
    }
}
