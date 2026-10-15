package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.l;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f4004o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final HashMap<Integer, String> f4005p = new HashMap<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final RemoteCallbackList<k> f4006q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final l.a f4007r = new b();

    class a extends RemoteCallbackList<k> {
        a() {
        }

        @Override // android.os.RemoteCallbackList
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCallbackDied(k kVar, Object obj) {
            MultiInstanceInvalidationService.this.f4005p.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    class b extends l.a {
        b() {
        }

        @Override // androidx.room.l
        public void G9(int i10, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f4006q) {
                String str = MultiInstanceInvalidationService.this.f4005p.get(Integer.valueOf(i10));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = MultiInstanceInvalidationService.this.f4006q.beginBroadcast();
                for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                    try {
                        int iIntValue = ((Integer) MultiInstanceInvalidationService.this.f4006q.getBroadcastCookie(i11)).intValue();
                        String str2 = MultiInstanceInvalidationService.this.f4005p.get(Integer.valueOf(iIntValue));
                        if (i10 != iIntValue && str.equals(str2)) {
                            try {
                                ((k) MultiInstanceInvalidationService.this.f4006q.getBroadcastItem(i11)).Z2(strArr);
                            } catch (RemoteException e10) {
                                Log.w("ROOM", "Error invoking a remote callback", e10);
                            }
                        }
                    } finally {
                        MultiInstanceInvalidationService.this.f4006q.finishBroadcast();
                    }
                }
            }
        }

        @Override // androidx.room.l
        public int h4(k kVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f4006q) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i10 = multiInstanceInvalidationService.f4004o + 1;
                multiInstanceInvalidationService.f4004o = i10;
                if (multiInstanceInvalidationService.f4006q.register(kVar, Integer.valueOf(i10))) {
                    MultiInstanceInvalidationService.this.f4005p.put(Integer.valueOf(i10), str);
                    return i10;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.f4004o--;
                return 0;
            }
        }

        @Override // androidx.room.l
        public void va(k kVar, int i10) {
            synchronized (MultiInstanceInvalidationService.this.f4006q) {
                MultiInstanceInvalidationService.this.f4006q.unregister(kVar);
                MultiInstanceInvalidationService.this.f4005p.remove(Integer.valueOf(i10));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f4007r;
    }
}
