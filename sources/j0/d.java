package j0;

import androidx.datastore.preferences.protobuf.b0;
import java.io.IOException;
import java.io.InputStream;
import t9.m;

/* JADX INFO: compiled from: PreferencesMapCompat.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f30573a = new a(null);

    /* JADX INFO: compiled from: PreferencesMapCompat.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        public final f a(InputStream inputStream) throws IOException {
            m.e(inputStream, "input");
            try {
                f fVarO = f.O(inputStream);
                m.d(fVarO, "{\n                PreferencesProto.PreferenceMap.parseFrom(input)\n            }");
                return fVarO;
            } catch (b0 e10) {
                throw new h0.a("Unable to parse preferences proto.", e10);
            }
        }
    }
}
