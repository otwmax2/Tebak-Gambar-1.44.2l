package x7;

/* JADX INFO: loaded from: classes2.dex */
public enum e {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO("video"),
    AUDIO("audio");


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f36521o;

    e(String str) {
        this.f36521o = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f36521o;
    }
}
