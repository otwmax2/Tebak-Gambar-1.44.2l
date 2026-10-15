package e;

import android.content.Context;
import android.content.Intent;
import t9.g;
import t9.m;

/* JADX INFO: compiled from: ActivityResultContracts.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends e.a<Intent, androidx.activity.result.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f28887a = new a(null);

    /* JADX INFO: compiled from: ActivityResultContracts.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    @Override // e.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.activity.result.a parseResult(int i10, Intent intent) {
        return new androidx.activity.result.a(i10, intent);
    }

    @Override // e.a
    public Intent createIntent(Context context, Intent intent) {
        m.e(context, "context");
        m.e(intent, "input");
        return intent;
    }
}
