package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import b.a;
import com.facebook.internal.security.CertificateUtil;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: NotificationManagerCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2090d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static c f2093g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NotificationManager f2095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f2089c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Set<String> f2091e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f2092f = new Object();

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    private static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f2098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f2099d;

        a(String str, int i10, String str2, Notification notification) {
            this.f2096a = str;
            this.f2097b = i10;
            this.f2098c = str2;
            this.f2099d = notification;
        }

        @Override // androidx.core.app.o.d
        public void a(b.a aVar) throws RemoteException {
            aVar.Y9(this.f2096a, this.f2097b, this.f2098c, this.f2099d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f2096a + ", id:" + this.f2097b + ", tag:" + this.f2098c + "]";
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f2100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f2101b;

        b(ComponentName componentName, IBinder iBinder) {
            this.f2100a = componentName;
            this.f2101b = iBinder;
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    private static class c implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Context f2102o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final HandlerThread f2103p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Handler f2104q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Map<ComponentName, a> f2105r = new HashMap();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private Set<String> f2106s = new HashSet();

        /* JADX INFO: compiled from: NotificationManagerCompat.java */
        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ComponentName f2107a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            b.a f2109c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f2108b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ArrayDeque<d> f2110d = new ArrayDeque<>();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f2111e = 0;

            a(ComponentName componentName) {
                this.f2107a = componentName;
            }
        }

        c(Context context) {
            this.f2102o = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f2103p = handlerThread;
            handlerThread.start();
            this.f2104q = new Handler(handlerThread.getLooper(), this);
        }

        private boolean a(a aVar) {
            if (aVar.f2108b) {
                return true;
            }
            boolean zBindService = this.f2102o.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f2107a), this, 33);
            aVar.f2108b = zBindService;
            if (zBindService) {
                aVar.f2111e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f2107a);
                this.f2102o.unbindService(this);
            }
            return aVar.f2108b;
        }

        private void b(a aVar) {
            if (aVar.f2108b) {
                this.f2102o.unbindService(this);
                aVar.f2108b = false;
            }
            aVar.f2109c = null;
        }

        private void c(d dVar) {
            j();
            for (a aVar : this.f2105r.values()) {
                aVar.f2110d.add(dVar);
                g(aVar);
            }
        }

        private void d(ComponentName componentName) {
            a aVar = this.f2105r.get(componentName);
            if (aVar != null) {
                g(aVar);
            }
        }

        private void e(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f2105r.get(componentName);
            if (aVar != null) {
                aVar.f2109c = a.AbstractBinderC0077a.P0(iBinder);
                aVar.f2111e = 0;
                g(aVar);
            }
        }

        private void f(ComponentName componentName) {
            a aVar = this.f2105r.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void g(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f2107a + ", " + aVar.f2110d.size() + " queued tasks");
            }
            if (aVar.f2110d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.f2109c == null) {
                i(aVar);
                return;
            }
            while (true) {
                d dVarPeek = aVar.f2110d.peek();
                if (dVarPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + dVarPeek);
                    }
                    dVarPeek.a(aVar.f2109c);
                    aVar.f2110d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + aVar.f2107a);
                    }
                } catch (RemoteException e10) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f2107a, e10);
                }
            }
            if (aVar.f2110d.isEmpty()) {
                return;
            }
            i(aVar);
        }

        private void i(a aVar) {
            if (this.f2104q.hasMessages(3, aVar.f2107a)) {
                return;
            }
            int i10 = aVar.f2111e + 1;
            aVar.f2111e = i10;
            if (i10 <= 6) {
                int i11 = (1 << (i10 - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i11 + " ms");
                }
                this.f2104q.sendMessageDelayed(this.f2104q.obtainMessage(3, aVar.f2107a), i11);
                return;
            }
            Log.w("NotifManCompat", "Giving up on delivering " + aVar.f2110d.size() + " tasks to " + aVar.f2107a + " after " + aVar.f2111e + " retries");
            aVar.f2110d.clear();
        }

        private void j() {
            Set<String> setC = o.c(this.f2102o);
            if (setC.equals(this.f2106s)) {
                return;
            }
            this.f2106s = setC;
            List<ResolveInfo> listQueryIntentServices = this.f2102o.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setC.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f2105r.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f2105r.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.f2105r.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        public void h(d dVar) {
            this.f2104q.obtainMessage(0, dVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                c((d) message.obj);
                return true;
            }
            if (i10 == 1) {
                b bVar = (b) message.obj;
                e(bVar.f2100a, bVar.f2101b);
                return true;
            }
            if (i10 == 2) {
                f((ComponentName) message.obj);
                return true;
            }
            if (i10 != 3) {
                return false;
            }
            d((ComponentName) message.obj);
            return true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f2104q.obtainMessage(1, new b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f2104q.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* JADX INFO: compiled from: NotificationManagerCompat.java */
    private interface d {
        void a(b.a aVar) throws RemoteException;
    }

    private o(Context context) {
        this.f2094a = context;
        this.f2095b = (NotificationManager) context.getSystemService("notification");
    }

    public static o b(Context context) {
        return new o(context);
    }

    public static Set<String> c(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f2089c) {
            if (string != null) {
                if (!string.equals(f2090d)) {
                    String[] strArrSplit = string.split(CertificateUtil.DELIMITER, -1);
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    f2091e = hashSet;
                    f2090d = string;
                }
                set = f2091e;
            } else {
                set = f2091e;
            }
        }
        return set;
    }

    private void f(d dVar) {
        synchronized (f2092f) {
            if (f2093g == null) {
                f2093g = new c(this.f2094a.getApplicationContext());
            }
            f2093g.h(dVar);
        }
    }

    private static boolean g(Notification notification) {
        Bundle bundleA = l.a(notification);
        return bundleA != null && bundleA.getBoolean("android.support.useSideChannel");
    }

    public boolean a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            return this.f2095b.areNotificationsEnabled();
        }
        if (i10 < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f2094a.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f2094a.getApplicationInfo();
        String packageName = this.f2094a.getApplicationContext().getPackageName();
        int i11 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i11), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public void d(int i10, Notification notification) {
        e(null, i10, notification);
    }

    public void e(String str, int i10, Notification notification) {
        if (!g(notification)) {
            this.f2095b.notify(str, i10, notification);
        } else {
            f(new a(this.f2094a.getPackageName(), i10, str, notification));
            this.f2095b.cancel(str, i10);
        }
    }
}
