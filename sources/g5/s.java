package g5;

import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class s extends AbstractSafeParcelable implements j0 {
    public abstract String V3();

    public Task<u> W3(boolean z10) {
        return FirebaseAuth.getInstance(k4()).f(this, z10);
    }

    public abstract t X3();

    public abstract y Y3();

    public abstract Uri Z3();

    public abstract List<? extends j0> a4();

    public abstract String b4();

    public abstract String c();

    public abstract boolean c4();

    public Task<Object> d4(d dVar) {
        Preconditions.k(dVar);
        return FirebaseAuth.getInstance(k4()).q(this, dVar);
    }

    public Task<Object> e4(d dVar) {
        Preconditions.k(dVar);
        return FirebaseAuth.getInstance(k4()).n(this, dVar);
    }

    public abstract s f4(List<? extends j0> list);

    public abstract List<String> g4();

    public abstract void h4(zzff zzffVar);

    public abstract s i4();

    public abstract void j4(List<z> list);

    public abstract b5.g k4();

    public abstract String l4();

    public abstract zzff m4();

    public abstract String n4();
}
