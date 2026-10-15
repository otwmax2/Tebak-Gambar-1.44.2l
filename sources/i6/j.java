package i6;

/* JADX INFO: compiled from: HeartBeatInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public interface j {

    /* JADX INFO: compiled from: HeartBeatInfo.java */
    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f30498o;

        a(int i10) {
            this.f30498o = i10;
        }

        public int c() {
            return this.f30498o;
        }
    }

    a b(String str);
}
