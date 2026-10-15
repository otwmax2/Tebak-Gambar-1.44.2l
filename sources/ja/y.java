package ja;

import java.io.IOException;

/* JADX INFO: compiled from: Protocol.java */
/* JADX INFO: loaded from: classes2.dex */
public enum y {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");


    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f31250o;

    y(String str) {
        this.f31250o = str;
    }

    public static y c(String str) throws IOException {
        y yVar = HTTP_1_0;
        if (str.equals(yVar.f31250o)) {
            return yVar;
        }
        y yVar2 = HTTP_1_1;
        if (str.equals(yVar2.f31250o)) {
            return yVar2;
        }
        y yVar3 = H2_PRIOR_KNOWLEDGE;
        if (str.equals(yVar3.f31250o)) {
            return yVar3;
        }
        y yVar4 = HTTP_2;
        if (str.equals(yVar4.f31250o)) {
            return yVar4;
        }
        y yVar5 = SPDY_3;
        if (str.equals(yVar5.f31250o)) {
            return yVar5;
        }
        y yVar6 = QUIC;
        if (str.equals(yVar6.f31250o)) {
            return yVar6;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f31250o;
    }
}
