package n5;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: DevelopmentPlatformProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f32457b = null;

    /* JADX INFO: compiled from: DevelopmentPlatformProvider.java */
    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f32458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f32459b;

        private b() {
            int iP = q5.i.p(f.this.f32456a, "com.google.firebase.crashlytics.unity_version", "string");
            if (iP == 0) {
                if (!f.this.c("flutter_assets/NOTICES.Z")) {
                    this.f32458a = null;
                    this.f32459b = null;
                    return;
                } else {
                    this.f32458a = "Flutter";
                    this.f32459b = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
            }
            this.f32458a = "Unity";
            String string = f.this.f32456a.getResources().getString(iP);
            this.f32459b = string;
            g.f().i("Unity Editor version is: " + string);
        }
    }

    public f(Context context) {
        this.f32456a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (this.f32456a.getAssets() == null) {
            return false;
        }
        try {
            InputStream inputStreamOpen = this.f32456a.getAssets().open(str);
            if (inputStreamOpen != null) {
                inputStreamOpen.close();
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.f32457b == null) {
            this.f32457b = new b();
        }
        return this.f32457b;
    }

    public String d() {
        return f().f32458a;
    }

    public String e() {
        return f().f32459b;
    }
}
