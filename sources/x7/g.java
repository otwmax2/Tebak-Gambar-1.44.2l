package x7;

/* JADX INFO: loaded from: classes2.dex */
public enum g {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED("unspecified"),
    LOADED("loaded"),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER("other");


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f36536o;

    g(String str) {
        this.f36536o = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f36536o;
    }
}
