package i1;

/* JADX INFO: compiled from: InputMergerFactory.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: compiled from: InputMergerFactory.java */
    class a extends i {
        a() {
        }

        @Override // i1.i
        public h a(String str) {
            return null;
        }
    }

    public static i c() {
        return new a();
    }

    public abstract h a(String str);

    public final h b(String str) {
        h hVarA = a(str);
        return hVarA == null ? h.a(str) : hVarA;
    }
}
