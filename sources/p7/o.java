package p7;

import com.facebook.appevents.AppEventsConstants;
import java.util.Map;

/* JADX INFO: compiled from: UPCAWriter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class o implements i7.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f33542a = new j();

    @Override // i7.g
    public l7.b a(String str, i7.a aVar, int i10, int i11, Map<i7.c, ?> map) throws i7.h {
        if (aVar == i7.a.UPC_A) {
            return this.f33542a.a(AppEventsConstants.EVENT_PARAM_VALUE_NO.concat(String.valueOf(str)), i7.a.EAN_13, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(aVar)));
    }
}
