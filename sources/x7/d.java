package x7;

import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: loaded from: classes2.dex */
public enum d {
    HTML("html"),
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript");


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f36514o;

    d(String str) {
        this.f36514o = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f36514o;
    }
}
