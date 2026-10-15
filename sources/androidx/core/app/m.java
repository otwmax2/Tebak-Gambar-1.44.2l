package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.l;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: NotificationCompatBuilder.java */
/* JADX INFO: loaded from: classes.dex */
class m implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Notification.Builder f2077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l.e f2078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RemoteViews f2079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RemoteViews f2080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Bundle> f2081f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f2082g = new Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f2083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RemoteViews f2084i;

    m(l.e eVar) {
        int i10;
        Icon icon;
        List<String> listE;
        this.f2078c = eVar;
        this.f2076a = eVar.f2046a;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            this.f2077b = new Notification.Builder(eVar.f2046a, eVar.K);
        } else {
            this.f2077b = new Notification.Builder(eVar.f2046a);
        }
        Notification notification = eVar.S;
        this.f2077b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, eVar.f2054i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(eVar.f2050e).setContentText(eVar.f2051f).setContentInfo(eVar.f2056k).setContentIntent(eVar.f2052g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(eVar.f2053h, (notification.flags & 128) != 0).setLargeIcon(eVar.f2055j).setNumber(eVar.f2057l).setProgress(eVar.f2065t, eVar.f2066u, eVar.f2067v);
        if (i11 < 21) {
            this.f2077b.setSound(notification.sound, notification.audioStreamType);
        }
        if (i11 >= 16) {
            this.f2077b.setSubText(eVar.f2062q).setUsesChronometer(eVar.f2060o).setPriority(eVar.f2058m);
            Iterator<l.a> it = eVar.f2047b.iterator();
            while (it.hasNext()) {
                b(it.next());
            }
            Bundle bundle = eVar.D;
            if (bundle != null) {
                this.f2082g.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (eVar.f2071z) {
                    this.f2082g.putBoolean("android.support.localOnly", true);
                }
                String str = eVar.f2068w;
                if (str != null) {
                    this.f2082g.putString("android.support.groupKey", str);
                    if (eVar.f2069x) {
                        this.f2082g.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f2082g.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = eVar.f2070y;
                if (str2 != null) {
                    this.f2082g.putString("android.support.sortKey", str2);
                }
            }
            this.f2079d = eVar.H;
            this.f2080e = eVar.I;
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 17) {
            this.f2077b.setShowWhen(eVar.f2059n);
        }
        if (i12 >= 19 && i12 < 21 && (listE = e(g(eVar.f2048c), eVar.V)) != null && !listE.isEmpty()) {
            this.f2082g.putStringArray("android.people", (String[]) listE.toArray(new String[listE.size()]));
        }
        if (i12 >= 20) {
            this.f2077b.setLocalOnly(eVar.f2071z).setGroup(eVar.f2068w).setGroupSummary(eVar.f2069x).setSortKey(eVar.f2070y);
            this.f2083h = eVar.O;
        }
        if (i12 >= 21) {
            this.f2077b.setCategory(eVar.C).setColor(eVar.E).setVisibility(eVar.F).setPublicVersion(eVar.G).setSound(notification.sound, notification.audioAttributes);
            List listE2 = i12 < 28 ? e(g(eVar.f2048c), eVar.V) : eVar.V;
            if (listE2 != null && !listE2.isEmpty()) {
                Iterator it2 = listE2.iterator();
                while (it2.hasNext()) {
                    this.f2077b.addPerson((String) it2.next());
                }
            }
            this.f2084i = eVar.J;
            if (eVar.f2049d.size() > 0) {
                Bundle bundle2 = eVar.c().getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i13 = 0; i13 < eVar.f2049d.size(); i13++) {
                    bundle4.putBundle(Integer.toString(i13), n.b(eVar.f2049d.get(i13)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                eVar.c().putBundle("android.car.EXTENSIONS", bundle2);
                this.f2082g.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 23 && (icon = eVar.U) != null) {
            this.f2077b.setSmallIcon(icon);
        }
        if (i14 >= 24) {
            this.f2077b.setExtras(eVar.D).setRemoteInputHistory(eVar.f2064s);
            RemoteViews remoteViews = eVar.H;
            if (remoteViews != null) {
                this.f2077b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = eVar.I;
            if (remoteViews2 != null) {
                this.f2077b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = eVar.J;
            if (remoteViews3 != null) {
                this.f2077b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i14 >= 26) {
            this.f2077b.setBadgeIconType(eVar.L).setSettingsText(eVar.f2063r).setShortcutId(eVar.M).setTimeoutAfter(eVar.N).setGroupAlertBehavior(eVar.O);
            if (eVar.B) {
                this.f2077b.setColorized(eVar.A);
            }
            if (!TextUtils.isEmpty(eVar.K)) {
                this.f2077b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            Iterator<p> it3 = eVar.f2048c.iterator();
            while (it3.hasNext()) {
                this.f2077b.addPerson(it3.next().h());
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 29) {
            this.f2077b.setAllowSystemGeneratedContextualActions(eVar.Q);
            this.f2077b.setBubbleMetadata(l.d.a(eVar.R));
        }
        if (i15 >= 31 && (i10 = eVar.P) != 0) {
            this.f2077b.setForegroundServiceBehavior(i10);
        }
        if (eVar.T) {
            if (this.f2078c.f2069x) {
                this.f2083h = 2;
            } else {
                this.f2083h = 1;
            }
            this.f2077b.setVibrate(null);
            this.f2077b.setSound(null);
            int i16 = notification.defaults & (-2);
            notification.defaults = i16;
            int i17 = i16 & (-3);
            notification.defaults = i17;
            this.f2077b.setDefaults(i17);
            if (i15 >= 26) {
                if (TextUtils.isEmpty(this.f2078c.f2068w)) {
                    this.f2077b.setGroup("silent");
                }
                this.f2077b.setGroupAlertBehavior(this.f2083h);
            }
        }
    }

    private void b(l.a aVar) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 20) {
            if (i10 >= 16) {
                this.f2081f.add(n.f(this.f2077b, aVar));
                return;
            }
            return;
        }
        IconCompat iconCompatE = aVar.e();
        Notification.Action.Builder builder = i10 >= 23 ? new Notification.Action.Builder(iconCompatE != null ? iconCompatE.q() : null, aVar.i(), aVar.a()) : new Notification.Action.Builder(iconCompatE != null ? iconCompatE.j() : 0, aVar.i(), aVar.a());
        if (aVar.f() != null) {
            for (RemoteInput remoteInput : r.b(aVar.f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = aVar.d() != null ? new Bundle(aVar.d()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 24) {
            builder.setAllowGeneratedReplies(aVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", aVar.g());
        if (i11 >= 28) {
            builder.setSemanticAction(aVar.g());
        }
        if (i11 >= 29) {
            builder.setContextual(aVar.k());
        }
        if (i11 >= 31) {
            builder.setAuthenticationRequired(aVar.j());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", aVar.h());
        builder.addExtras(bundle);
        this.f2077b.addAction(builder.build());
    }

    private static List<String> e(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        o.b bVar = new o.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    private static List<String> g(List<p> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<p> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().g());
        }
        return arrayList;
    }

    private void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i10 = notification.defaults & (-2);
        notification.defaults = i10;
        notification.defaults = i10 & (-3);
    }

    @Override // androidx.core.app.k
    public Notification.Builder a() {
        return this.f2077b;
    }

    public Notification c() {
        Bundle bundleA;
        RemoteViews remoteViewsF;
        RemoteViews remoteViewsD;
        l.f fVar = this.f2078c.f2061p;
        if (fVar != null) {
            fVar.b(this);
        }
        RemoteViews remoteViewsE = fVar != null ? fVar.e(this) : null;
        Notification notificationD = d();
        if (remoteViewsE != null) {
            notificationD.contentView = remoteViewsE;
        } else {
            RemoteViews remoteViews = this.f2078c.H;
            if (remoteViews != null) {
                notificationD.contentView = remoteViews;
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 16 && fVar != null && (remoteViewsD = fVar.d(this)) != null) {
            notificationD.bigContentView = remoteViewsD;
        }
        if (i10 >= 21 && fVar != null && (remoteViewsF = this.f2078c.f2061p.f(this)) != null) {
            notificationD.headsUpContentView = remoteViewsF;
        }
        if (i10 >= 16 && fVar != null && (bundleA = l.a(notificationD)) != null) {
            fVar.a(bundleA);
        }
        return notificationD;
    }

    protected Notification d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            return this.f2077b.build();
        }
        if (i10 >= 24) {
            Notification notificationBuild = this.f2077b.build();
            if (this.f2083h != 0) {
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.f2083h == 2) {
                    h(notificationBuild);
                }
                if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) == 0 && this.f2083h == 1) {
                    h(notificationBuild);
                }
            }
            return notificationBuild;
        }
        if (i10 >= 21) {
            this.f2077b.setExtras(this.f2082g);
            Notification notificationBuild2 = this.f2077b.build();
            RemoteViews remoteViews = this.f2079d;
            if (remoteViews != null) {
                notificationBuild2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f2080e;
            if (remoteViews2 != null) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f2084i;
            if (remoteViews3 != null) {
                notificationBuild2.headsUpContentView = remoteViews3;
            }
            if (this.f2083h != 0) {
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.f2083h == 2) {
                    h(notificationBuild2);
                }
                if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) == 0 && this.f2083h == 1) {
                    h(notificationBuild2);
                }
            }
            return notificationBuild2;
        }
        if (i10 >= 20) {
            this.f2077b.setExtras(this.f2082g);
            Notification notificationBuild3 = this.f2077b.build();
            RemoteViews remoteViews4 = this.f2079d;
            if (remoteViews4 != null) {
                notificationBuild3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f2080e;
            if (remoteViews5 != null) {
                notificationBuild3.bigContentView = remoteViews5;
            }
            if (this.f2083h != 0) {
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.f2083h == 2) {
                    h(notificationBuild3);
                }
                if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) == 0 && this.f2083h == 1) {
                    h(notificationBuild3);
                }
            }
            return notificationBuild3;
        }
        if (i10 >= 19) {
            SparseArray<Bundle> sparseArrayA = n.a(this.f2081f);
            if (sparseArrayA != null) {
                this.f2082g.putSparseParcelableArray("android.support.actionExtras", sparseArrayA);
            }
            this.f2077b.setExtras(this.f2082g);
            Notification notificationBuild4 = this.f2077b.build();
            RemoteViews remoteViews6 = this.f2079d;
            if (remoteViews6 != null) {
                notificationBuild4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f2080e;
            if (remoteViews7 != null) {
                notificationBuild4.bigContentView = remoteViews7;
            }
            return notificationBuild4;
        }
        if (i10 < 16) {
            return this.f2077b.getNotification();
        }
        Notification notificationBuild5 = this.f2077b.build();
        Bundle bundleA = l.a(notificationBuild5);
        Bundle bundle = new Bundle(this.f2082g);
        for (String str : this.f2082g.keySet()) {
            if (bundleA.containsKey(str)) {
                bundle.remove(str);
            }
        }
        bundleA.putAll(bundle);
        SparseArray<Bundle> sparseArrayA2 = n.a(this.f2081f);
        if (sparseArrayA2 != null) {
            l.a(notificationBuild5).putSparseParcelableArray("android.support.actionExtras", sparseArrayA2);
        }
        RemoteViews remoteViews8 = this.f2079d;
        if (remoteViews8 != null) {
            notificationBuild5.contentView = remoteViews8;
        }
        RemoteViews remoteViews9 = this.f2080e;
        if (remoteViews9 != null) {
            notificationBuild5.bigContentView = remoteViews9;
        }
        return notificationBuild5;
    }

    Context f() {
        return this.f2076a;
    }
}
