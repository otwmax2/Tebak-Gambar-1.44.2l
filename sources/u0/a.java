package u0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: compiled from: LocalBroadcastManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f35565f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static a f35566g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f35567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<c>> f35568b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, ArrayList<c>> f35569c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList<b> f35570d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f35571e;

    /* JADX INFO: renamed from: u0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    class HandlerC0260a extends Handler {
        HandlerC0260a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f35573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ArrayList<c> f35574b;

        b(Intent intent, ArrayList<c> arrayList) {
            this.f35573a = intent;
            this.f35574b = arrayList;
        }
    }

    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final IntentFilter f35575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final BroadcastReceiver f35576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f35577c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f35578d;

        c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f35575a = intentFilter;
            this.f35576b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f35576b);
            sb.append(" filter=");
            sb.append(this.f35575a);
            if (this.f35578d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private a(Context context) {
        this.f35567a = context;
        this.f35571e = new HandlerC0260a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f35565f) {
            if (f35566g == null) {
                f35566g = new a(context.getApplicationContext());
            }
            aVar = f35566g;
        }
        return aVar;
    }

    void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f35568b) {
                size = this.f35570d.size();
                if (size <= 0) {
                    return;
                }
                bVarArr = new b[size];
                this.f35570d.toArray(bVarArr);
                this.f35570d.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = bVarArr[i10];
                int size2 = bVar.f35574b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c cVar = bVar.f35574b.get(i11);
                    if (!cVar.f35578d) {
                        cVar.f35576b.onReceive(this.f35567a, bVar.f35573a);
                    }
                }
            }
        }
    }

    public void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f35568b) {
            c cVar = new c(intentFilter, broadcastReceiver);
            ArrayList<c> arrayList = this.f35568b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f35568b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cVar);
            for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                String action = intentFilter.getAction(i10);
                ArrayList<c> arrayList2 = this.f35569c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f35569c.put(action, arrayList2);
                }
                arrayList2.add(cVar);
            }
        }
    }

    public boolean d(Intent intent) {
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<c> arrayList2;
        String str2;
        synchronized (this.f35568b) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f35567a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z10 = (intent.getFlags() & 8) != 0;
            if (z10) {
                Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<c> arrayList3 = this.f35569c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z10) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i11 = 0;
                while (i11 < arrayList3.size()) {
                    c cVar = arrayList3.get(i11);
                    if (z10) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f35575a);
                    }
                    if (cVar.f35577c) {
                        if (z10) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                        i10 = i11;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = strResolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i10 = i11;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = strResolveTypeIfNeeded;
                        int iMatch = cVar.f35575a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (iMatch >= 0) {
                            if (z10) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(cVar);
                            cVar.f35577c = true;
                            i11 = i10 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            strResolveTypeIfNeeded = str2;
                        } else if (z10) {
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + (iMatch != -4 ? iMatch != -3 ? iMatch != -2 ? iMatch != -1 ? "unknown reason" : "type" : "data" : "action" : "category"));
                        }
                    }
                    arrayList4 = arrayList;
                    i11 = i10 + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    strResolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                        ((c) arrayList5.get(i12)).f35577c = false;
                    }
                    this.f35570d.add(new b(intent, arrayList5));
                    if (!this.f35571e.hasMessages(1)) {
                        this.f35571e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f35568b) {
            ArrayList<c> arrayListRemove = this.f35568b.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                c cVar = arrayListRemove.get(size);
                cVar.f35578d = true;
                for (int i10 = 0; i10 < cVar.f35575a.countActions(); i10++) {
                    String action = cVar.f35575a.getAction(i10);
                    ArrayList<c> arrayList = this.f35569c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            c cVar2 = arrayList.get(size2);
                            if (cVar2.f35576b == broadcastReceiver) {
                                cVar2.f35578d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f35569c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
