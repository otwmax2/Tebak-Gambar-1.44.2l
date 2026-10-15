package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.cloudmessaging.zza;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class Rpc {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f6839h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static PendingIntent f6840i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Executor f6841j = v.f6883o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f6843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzr f6844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f6845d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Messenger f6847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zza f6848g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("responseCallbacks")
    private final o.g<String, TaskCompletionSource<Bundle>> f6842a = new o.g<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Messenger f6846e = new Messenger(new u(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.f6843b = context;
        this.f6844c = new zzr(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f6845d = scheduledThreadPoolExecutor;
    }

    static final /* synthetic */ Bundle b(Task task) throws Exception {
        if (task.t()) {
            return (Bundle) task.p();
        }
        if (Log.isLoggable("Rpc", 3)) {
            String strValueOf = String.valueOf(task.o());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 22);
            sb.append("Error making request: ");
            sb.append(strValueOf);
            Log.d("Rpc", sb.toString());
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.o());
    }

    static final /* synthetic */ Task c(Bundle bundle) throws Exception {
        return l(bundle) ? Tasks.e(null) : Tasks.e(bundle);
    }

    private static synchronized String e() {
        int i10;
        i10 = f6839h;
        f6839h = i10 + 1;
        return Integer.toString(i10);
    }

    private static synchronized void f(Context context, Intent intent) {
        if (f6840i == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            f6840i = PendingIntent.getBroadcast(context, 0, intent2, 0);
        }
        intent.putExtra("app", f6840i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zza.C0105zza());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zza) {
                        this.f6848g = (zza) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        this.f6847f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (Log.isLoggable("Rpc", 3)) {
                        String strValueOf = String.valueOf(action);
                        Log.d("Rpc", strValueOf.length() != 0 ? "Unexpected response action: ".concat(strValueOf) : new String("Unexpected response action: "));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra != null) {
                    Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
                    if (!matcher.matches()) {
                        if (Log.isLoggable("Rpc", 3)) {
                            Log.d("Rpc", stringExtra.length() != 0 ? "Unexpected response string: ".concat(stringExtra) : new String("Unexpected response string: "));
                            return;
                        }
                        return;
                    }
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    if (strGroup != null) {
                        Bundle extras = intent2.getExtras();
                        extras.putString("registration_id", strGroup2);
                        j(strGroup, extras);
                        return;
                    }
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String strValueOf2 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(strValueOf2.length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(strValueOf2);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", stringExtra2.length() != 0 ? "Received InstanceID error ".concat(stringExtra2) : new String("Received InstanceID error "));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (this.f6842a) {
                        for (int i10 = 0; i10 < this.f6842a.size(); i10++) {
                            j(this.f6842a.k(i10), intent2.getExtras());
                        }
                    }
                    return;
                }
                String[] strArrSplit = stringExtra2.split("\\|");
                if (strArrSplit.length <= 2 || !"ID".equals(strArrSplit[1])) {
                    Log.w("Rpc", stringExtra2.length() != 0 ? "Unexpected structured response ".concat(stringExtra2) : new String("Unexpected structured response "));
                    return;
                }
                String str = strArrSplit[2];
                String strSubstring = strArrSplit[3];
                if (strSubstring.startsWith(CertificateUtil.DELIMITER)) {
                    strSubstring = strSubstring.substring(1);
                }
                j(str, intent2.putExtra("error", strSubstring).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    static final /* synthetic */ void i(TaskCompletionSource taskCompletionSource) {
        if (taskCompletionSource.d(new IOException("TIMEOUT"))) {
            Log.w("Rpc", "No response");
        }
    }

    private final void j(String str, Bundle bundle) {
        synchronized (this.f6842a) {
            TaskCompletionSource<Bundle> taskCompletionSourceRemove = this.f6842a.remove(str);
            if (taskCompletionSourceRemove != null) {
                taskCompletionSourceRemove.c(bundle);
            } else {
                String strValueOf = String.valueOf(str);
                Log.w("Rpc", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
            }
        }
    }

    private static boolean l(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.tasks.Task<android.os.Bundle> m(android.os.Bundle r9) {
        /*
            Method dump skipped, instruction units count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cloudmessaging.Rpc.m(android.os.Bundle):com.google.android.gms.tasks.Task");
    }

    public Task<Bundle> a(final Bundle bundle) {
        if (this.f6844c.c() >= 12000000) {
            return zze.c(this.f6843b).f(1, bundle).l(f6841j, o.f6874a);
        }
        return !(this.f6844c.a() != 0) ? Tasks.d(new IOException("MISSING_INSTANCEID_SERVICE")) : m(bundle).n(f6841j, new Continuation(this, bundle) { // from class: com.google.android.gms.cloudmessaging.q

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Rpc f6876a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Bundle f6877b;

            {
                this.f6876a = this;
                this.f6877b = bundle;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object a(Task task) {
                return this.f6876a.d(this.f6877b, task);
            }
        });
    }

    final /* synthetic */ Task d(Bundle bundle, Task task) throws Exception {
        return (task.t() && l((Bundle) task.p())) ? m(bundle).v(f6841j, s.f6878a) : task;
    }

    final /* synthetic */ void k(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.f6842a) {
            this.f6842a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
