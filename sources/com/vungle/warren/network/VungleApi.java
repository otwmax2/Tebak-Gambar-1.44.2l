package com.vungle.warren.network;

import androidx.annotation.Keep;
import com.google.gson.o;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface VungleApi {
    Call<o> ads(String str, String str2, o oVar);

    Call<o> bustAnalytics(String str, String str2, o oVar);

    Call<o> cacheBust(String str, String str2, o oVar);

    Call<o> config(String str, o oVar);

    Call<Void> pingTPAT(String str, String str2);

    Call<o> reportAd(String str, String str2, o oVar);

    Call<o> reportNew(String str, String str2, Map<String, String> map);

    Call<o> ri(String str, String str2, o oVar);

    Call<o> sendLog(String str, String str2, o oVar);

    Call<o> willPlayAd(String str, String str2, o oVar);
}
