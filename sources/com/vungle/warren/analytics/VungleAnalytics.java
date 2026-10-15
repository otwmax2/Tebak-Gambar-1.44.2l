package com.vungle.warren.analytics;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.o;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.model.AnalyticUrl;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Callback;
import com.vungle.warren.network.Response;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.VungleUrlUtility;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VungleAnalytics implements AdAnalytics {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f28007c = "VungleAnalytics";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VungleApiClient f28008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Repository f28009b;

    public VungleAnalytics(VungleApiClient vungleApiClient, Repository repository) {
        this.f28008a = vungleApiClient;
        this.f28009b = repository;
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] ping(String[] strArr) {
        if (strArr.length == 0) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    try {
                        if (this.f28008a.pingTPAT(str)) {
                            this.f28009b.delete(new AnalyticUrl(str));
                        } else {
                            arrayList.add(str);
                        }
                    } catch (DatabaseHelper.DBException unused) {
                        Log.e(f28007c, "DBException deleting : " + str);
                        Log.e(f28007c, "Invalid Url : " + str);
                    }
                } catch (VungleApiClient.ClearTextTrafficException unused2) {
                    Log.e(f28007c, "Cleartext Network Traffic is Blocked : " + str);
                } catch (DatabaseHelper.DBException unused3) {
                    Log.e(f28007c, "Can't delete sent ping URL : " + str);
                } catch (MalformedURLException unused4) {
                    this.f28009b.delete(new AnalyticUrl(str));
                    Log.e(f28007c, "Invalid Url : " + str);
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public String[] retryUnsent() {
        List list = (List) this.f28009b.loadAll(AnalyticUrl.class).get();
        if (list == null || list.size() <= 0) {
            return new String[0];
        }
        int size = list.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = ((AnalyticUrl) list.get(i10)).url;
        }
        return ping(strArr);
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void ri(o oVar) {
        if (oVar == null) {
            return;
        }
        this.f28008a.ri(oVar).enqueue(new Callback<o>() { // from class: com.vungle.warren.analytics.VungleAnalytics.1
            @Override // com.vungle.warren.network.Callback
            public void onFailure(Call<o> call, Throwable th) {
                Log.d(VungleAnalytics.f28007c, "send RI Failure");
            }

            @Override // com.vungle.warren.network.Callback
            public void onResponse(Call<o> call, Response<o> response) {
                Log.d(VungleAnalytics.f28007c, "send RI success");
            }
        });
    }

    @Override // com.vungle.warren.analytics.AdAnalytics
    public void saveVungleUrls(String[] strArr) {
        for (String str : strArr) {
            if (VungleUrlUtility.isVungleUrl(str)) {
                try {
                    this.f28009b.save(new AnalyticUrl(str));
                } catch (DatabaseHelper.DBException unused) {
                    Log.e(f28007c, "Can't save failed to ping URL : " + str);
                }
            }
        }
    }
}
