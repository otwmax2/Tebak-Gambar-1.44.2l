package androidx.browser.customtabs;

import android.os.Bundle;

/* JADX INFO: compiled from: CustomTabColorSchemeParams.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f1262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f1263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f1264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f1265d;

    /* JADX INFO: renamed from: androidx.browser.customtabs.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CustomTabColorSchemeParams.java */
    public static final class C0016a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f1266a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f1267b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f1268c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f1269d;

        public a a() {
            return new a(this.f1266a, this.f1267b, this.f1268c, this.f1269d);
        }

        public C0016a b(int i10) {
            this.f1266a = Integer.valueOf(i10 | (-16777216));
            return this;
        }
    }

    a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f1262a = num;
        this.f1263b = num2;
        this.f1264c = num3;
        this.f1265d = num4;
    }

    Bundle a() {
        Bundle bundle = new Bundle();
        Integer num = this.f1262a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f1263b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f1264c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f1265d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
