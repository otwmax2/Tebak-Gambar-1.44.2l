package com.vungle.warren.log;

import com.google.gson.o;

/* JADX INFO: loaded from: classes2.dex */
class LogEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f28064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f28065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f28066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f28067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f28068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f28069f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f28070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f28071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f28072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f28073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f28074k;

    LogEntry(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f28064a = str2;
        this.f28065b = str;
        this.f28066c = str3;
        this.f28067d = str4;
        this.f28068e = str5;
        this.f28069f = str6;
        this.f28070g = str7;
        this.f28071h = str8;
        this.f28072i = str9;
        this.f28073j = str10;
        this.f28074k = str11;
    }

    private void a(o oVar, String str, String str2) {
        if (str2 != null) {
            oVar.x(str, str2);
        }
    }

    public String toJsonString() {
        o oVar = new o();
        oVar.x("raw_log", this.f28065b);
        o oVar2 = new o();
        oVar.t("metadata", oVar2);
        a(oVar2, "log_level", this.f28064a);
        a(oVar2, "context", this.f28066c);
        a(oVar2, "event_id", this.f28067d);
        a(oVar2, "sdk_user_agent", this.f28068e);
        a(oVar2, "bundle_id", this.f28069f);
        a(oVar2, "time_zone", this.f28070g);
        a(oVar2, "device_timestamp", this.f28071h);
        a(oVar2, "custom_data", this.f28072i);
        a(oVar2, "exception_class", this.f28073j);
        a(oVar2, "thread_id", this.f28074k);
        return oVar.toString();
    }
}
