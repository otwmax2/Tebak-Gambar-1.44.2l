package x7;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: loaded from: classes2.dex */
public enum h {
    NATIVE(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE),
    JAVASCRIPT("javascript"),
    NONE(IntegrityManager.INTEGRITY_TYPE_NONE);


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f36541o;

    h(String str) {
        this.f36541o = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f36541o;
    }
}
