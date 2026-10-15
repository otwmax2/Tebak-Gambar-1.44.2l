package com.facebook.bolts;

import android.net.Uri;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: AppLink.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AppLink {
    private final Uri sourceUrl;
    private final List<Target> targets;
    private final Uri webUrl;

    /* JADX INFO: compiled from: AppLink.kt */
    public static final class Target {
        private final String appName;
        private final String className;
        private final String packageName;
        private final Uri url;

        public Target(String str, String str2, Uri uri, String str3) {
            t9.m.e(str, "packageName");
            t9.m.e(str2, "className");
            t9.m.e(uri, "url");
            t9.m.e(str3, "appName");
            this.packageName = str;
            this.className = str2;
            this.url = uri;
            this.appName = str3;
        }

        public final String getAppName() {
            return this.appName;
        }

        public final String getClassName() {
            return this.className;
        }

        public final String getPackageName() {
            return this.packageName;
        }

        public final Uri getUrl() {
            return this.url;
        }
    }

    public AppLink(Uri uri, List<Target> list, Uri uri2) {
        t9.m.e(uri, "sourceUrl");
        t9.m.e(uri2, "webUrl");
        this.sourceUrl = uri;
        this.webUrl = uri2;
        this.targets = list == null ? i9.l.e() : list;
    }

    public final Uri getSourceUrl() {
        return this.sourceUrl;
    }

    public final List<Target> getTargets() {
        List<Target> listUnmodifiableList = Collections.unmodifiableList(this.targets);
        t9.m.d(listUnmodifiableList, "unmodifiableList(field)");
        return listUnmodifiableList;
    }

    public final Uri getWebUrl() {
        return this.webUrl;
    }
}
