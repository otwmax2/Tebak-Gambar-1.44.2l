package j5;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.firebase_auth.zzbg;
import com.google.android.gms.internal.firebase_auth.zzfy;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzbg<String> f30720c = zzbg.o("firebaseAppName", "firebaseUserUid", "operation", "tenantId", "verifyAssertionRequest", "statusCode", "statusMessage", "timestamp");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final o f30721d = new o();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Task<Object> f30722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f30723b = 0;

    private o() {
    }

    public static o a() {
        return f30721d;
    }

    public static void c(Context context, Status status) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putInt("statusCode", status.X3());
        editorEdit.putString("statusMessage", status.Y3());
        editorEdit.putLong("timestamp", DefaultClock.d().a());
        editorEdit.commit();
    }

    public static void d(Context context, zzfy zzfyVar, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0).edit();
        editorEdit.putString("verifyAssertionRequest", SafeParcelableSerializer.f(zzfyVar));
        editorEdit.putString("operation", str);
        editorEdit.putString("tenantId", str2);
        editorEdit.putLong("timestamp", DefaultClock.d().a());
        editorEdit.commit();
    }

    private static void e(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        zzbg<String> zzbgVar = f30720c;
        int size = zzbgVar.size();
        int i10 = 0;
        while (i10 < size) {
            String str = zzbgVar.get(i10);
            i10++;
            editorEdit.remove(str);
        }
        editorEdit.commit();
    }

    public final void b(Context context) {
        Preconditions.k(context);
        e(context.getSharedPreferences("com.google.firebase.auth.internal.ProcessDeathHelper", 0));
        this.f30722a = null;
        this.f30723b = 0L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(com.google.firebase.auth.FirebaseAuth r12) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: j5.o.f(com.google.firebase.auth.FirebaseAuth):void");
    }
}
