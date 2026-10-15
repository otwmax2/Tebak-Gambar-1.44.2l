package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejf implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzq f16766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f16767c;

    public zzejf(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, List list) {
        this.f16765a = context;
        this.f16766b = zzqVar;
        this.f16767c = list;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        Bundle bundle = (Bundle) obj;
        if (((Boolean) zzbcp.f10580a.e()).booleanValue()) {
            Bundle bundle2 = new Bundle();
            com.google.android.gms.ads.internal.zzt.r();
            String className = null;
            try {
                ActivityManager activityManager = (ActivityManager) this.f16765a.getSystemService("activity");
                if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                    className = componentName.getClassName();
                }
            } catch (Exception unused) {
            }
            bundle2.putString("activity", className);
            Bundle bundle3 = new Bundle();
            bundle3.putInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, this.f16766b.f5935s);
            bundle3.putInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.f16766b.f5932p);
            bundle2.putBundle("size", bundle3);
            if (!this.f16767c.isEmpty()) {
                List list = this.f16767c;
                bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle.putBundle("view_hierarchy", bundle2);
        }
    }
}
