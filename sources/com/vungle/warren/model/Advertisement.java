package com.vungle.warren.model;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.webkit.URLUtil;
import b7.c;
import c7.h;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.o;
import com.vungle.mediation.BuildConfig;
import com.vungle.warren.AdConfig;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.model.AdvertisementDBAdapter;
import ja.t;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Advertisement implements Comparable<Advertisement> {
    public static final int DONE = 3;
    public static final int ERROR = 4;
    public static final int INVALID = 5;
    public static final String KEY_POSTROLL = "postroll";
    public static final String KEY_TEMPLATE = "template";
    public static final String KEY_VIDEO = "video";
    public static final int LANDSCAPE = 1;
    public static final int NEW = 0;
    public static final int PORTRAIT = 0;
    public static final int READY = 1;
    public static final int TYPE_VUNGLE_LOCAL = 0;
    public static final int TYPE_VUNGLE_MRAID = 1;
    public static final int VIEWING = 2;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final Collection<String> f28115d0 = Arrays.asList("play_percentage", "checkpoint.0", "checkpoint.25", "checkpoint.50", "checkpoint.75", "checkpoint.100");

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final String[] f28116e0 = new String[0];
    String A;
    int B;
    int C;
    String D;
    String E;
    boolean F;
    boolean G;
    String H;
    String I;
    AdConfig J;
    int K;
    String L;
    String M;
    String N;
    Map<String, String> O;
    Map<String, String> P;
    Map<String, Pair<String, String>> Q;
    Map<String, String> R;
    String S;
    String T;
    boolean U;
    String V;
    boolean W;
    String X;
    String Y;
    int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    String f28117a0;
    public long adRequestStartTime;
    public long assetDownloadDuration;
    public long assetDownloadStartTime;
    public boolean assetsFullyDownloaded;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    long f28118b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    long f28119c0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private f f28120o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @AdType
    int f28121p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    String f28122q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f28123r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f28124s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    List<Checkpoint> f28125t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Map<String, ArrayList<String>> f28126u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f28127v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    String f28128w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f28129x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f28130y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f28131z;

    public @interface AdType {
    }

    public @interface CacheKey {
    }

    public static class Checkpoint implements Comparable<Checkpoint> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @c("percentage")
        private byte f28132o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @c("urls")
        private String[] f28133p;

        public Checkpoint(o oVar) throws IllegalArgumentException {
            if (!JsonUtil.hasNonNull(oVar, "checkpoint")) {
                throw new IllegalArgumentException("Checkpoint missing percentage!");
            }
            this.f28132o = (byte) (oVar.A("checkpoint").i() * 100.0f);
            if (!JsonUtil.hasNonNull(oVar, "urls")) {
                throw new IllegalArgumentException("Checkpoint missing reporting URL!");
            }
            i iVarB = oVar.B("urls");
            this.f28133p = new String[iVarB.size()];
            for (int i10 = 0; i10 < iVarB.size(); i10++) {
                if (iVarB.v(i10) == null || "null".equalsIgnoreCase(iVarB.v(i10).toString())) {
                    this.f28133p[i10] = BuildConfig.FLAVOR;
                } else {
                    this.f28133p[i10] = iVarB.v(i10).o();
                }
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Checkpoint)) {
                return false;
            }
            Checkpoint checkpoint = (Checkpoint) obj;
            if (checkpoint.f28132o != this.f28132o || checkpoint.f28133p.length != this.f28133p.length) {
                return false;
            }
            int i10 = 0;
            while (true) {
                String[] strArr = this.f28133p;
                if (i10 >= strArr.length) {
                    return true;
                }
                if (!checkpoint.f28133p[i10].equals(strArr[i10])) {
                    return false;
                }
                i10++;
            }
        }

        public byte getPercentage() {
            return this.f28132o;
        }

        public String[] getUrls() {
            return (String[]) this.f28133p.clone();
        }

        public int hashCode() {
            int i10 = this.f28132o * 31;
            String[] strArr = this.f28133p;
            return ((i10 + strArr.length) * 31) + Arrays.hashCode(strArr);
        }

        @Override // java.lang.Comparable
        public int compareTo(Checkpoint checkpoint) {
            return Float.compare(this.f28132o, checkpoint.f28132o);
        }

        public Checkpoint(i iVar, byte b10) {
            if (iVar.size() != 0) {
                this.f28133p = new String[iVar.size()];
                for (int i10 = 0; i10 < iVar.size(); i10++) {
                    this.f28133p[i10] = iVar.v(i10).o();
                }
                this.f28132o = b10;
                return;
            }
            throw new IllegalArgumentException("Empty URLS!");
        }
    }

    public @interface Orientation {
    }

    public @interface State {
    }

    Advertisement() {
        this.f28120o = new f();
        this.f28126u = new h();
        this.G = true;
        this.P = new HashMap();
        this.Q = new HashMap();
        this.R = new HashMap();
        this.Z = 0;
        this.assetsFullyDownloaded = false;
    }

    private boolean f(String str) {
        return (TextUtils.isEmpty(str) || t.r(str) == null) ? false : true;
    }

    String c() {
        return this.S;
    }

    public void configure(AdConfig adConfig) {
        if (adConfig == null) {
            this.J = new AdConfig();
        } else {
            this.J = adConfig;
        }
    }

    public o createMRAIDArgs() {
        if (this.O == null) {
            throw new IllegalArgumentException("Advertisement does not have MRAID Arguments!");
        }
        HashMap map = new HashMap(this.O);
        for (Map.Entry<String, Pair<String, String>> entry : this.Q.entrySet()) {
            map.put(entry.getKey(), entry.getValue().first);
        }
        if (!this.P.isEmpty()) {
            map.putAll(this.P);
        }
        if (!this.R.isEmpty()) {
            map.putAll(this.R);
        }
        String str = (String) map.get("START_MUTED");
        String str2 = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
        if (!ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(str)) {
            if ((getAdConfig().getSettings() & 1) == 0) {
                str2 = "false";
            }
            map.put("START_MUTED", str2);
        }
        o oVar = new o();
        for (Map.Entry entry2 : map.entrySet()) {
            oVar.x((String) entry2.getKey(), (String) entry2.getValue());
        }
        VungleLogger.verbose(true, "Advertisement", "mraid_args", oVar.toString());
        return oVar;
    }

    String e() {
        return this.A;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Advertisement)) {
            return false;
        }
        Advertisement advertisement = (Advertisement) obj;
        if (advertisement.f28121p != this.f28121p || advertisement.f28127v != this.f28127v || advertisement.f28129x != this.f28129x || advertisement.f28130y != this.f28130y || advertisement.f28131z != this.f28131z || advertisement.B != this.B || advertisement.C != this.C || advertisement.F != this.F || advertisement.G != this.G || advertisement.K != this.K || advertisement.U != this.U || advertisement.W != this.W || advertisement.Z != this.Z || (str = advertisement.f28122q) == null || (str2 = this.f28122q) == null || !str.equals(str2) || !advertisement.f28128w.equals(this.f28128w) || !advertisement.A.equals(this.A) || !advertisement.D.equals(this.D) || !advertisement.E.equals(this.E) || !advertisement.H.equals(this.H) || !advertisement.I.equals(this.I) || !advertisement.L.equals(this.L) || !advertisement.M.equals(this.M)) {
            return false;
        }
        String str3 = advertisement.V;
        if (str3 == null ? this.V != null : !str3.equals(this.V)) {
            return false;
        }
        if (!advertisement.X.equals(this.X) || !advertisement.Y.equals(this.Y) || advertisement.f28125t.size() != this.f28125t.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f28125t.size(); i10++) {
            if (!advertisement.f28125t.get(i10).equals(this.f28125t.get(i10))) {
                return false;
            }
        }
        return this.f28126u.equals(advertisement.f28126u) && advertisement.f28119c0 == this.f28119c0;
    }

    public AdConfig getAdConfig() {
        return this.J;
    }

    public String getAdMarketId() {
        return this.X;
    }

    public String getAdToken() {
        return this.L;
    }

    @AdType
    public int getAdType() {
        return this.f28121p;
    }

    public String getAdvertiserAppId() {
        String appID = getAppID();
        String appID2 = getAppID();
        if (appID2 != null && appID2.length() > 3) {
            try {
                JSONObject jSONObject = new JSONObject(appID2.substring(3));
                appID = jSONObject.isNull("app_id") ? null : jSONObject.optString("app_id", null);
            } catch (JSONException e10) {
                Log.e("Advertisement", "JsonException : ", e10);
            }
        }
        return TextUtils.isEmpty(appID) ? "unknown" : appID;
    }

    public String getAppID() {
        return this.f28123r;
    }

    public long getAssetDownloadDuration() {
        return this.assetDownloadDuration;
    }

    public String getBidToken() {
        return this.Y;
    }

    public String getCTAURL(boolean z10) {
        int i10 = this.f28121p;
        if (i10 == 0) {
            return z10 ? this.I : this.H;
        }
        if (i10 == 1) {
            return this.I;
        }
        throw new IllegalArgumentException("Unknown AdType " + this.f28121p);
    }

    public String getCampaign() {
        return this.f28128w;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getCampaignId() {
        /*
            r3 = this;
            java.lang.String r0 = r3.getCampaign()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L18
            java.lang.String r1 = "\\|"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 1
            if (r1 < r2) goto L18
            r1 = 0
            r0 = r0[r1]
            goto L19
        L18:
            r0 = 0
        L19:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L21
            java.lang.String r0 = "unknown"
        L21:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.getCampaignId():java.lang.String");
    }

    public List<Checkpoint> getCheckpoints() {
        return this.f28125t;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getCreativeId() {
        /*
            r3 = this;
            java.lang.String r0 = r3.getCampaign()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L18
            java.lang.String r1 = "\\|"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 2
            if (r1 < r2) goto L18
            r1 = 1
            r0 = r0[r1]
            goto L19
        L18:
            r0 = 0
        L19:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L21
            java.lang.String r0 = "unknown"
        L21:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.model.Advertisement.getCreativeId():java.lang.String");
    }

    public boolean getCtaClickArea() {
        return this.G;
    }

    public Map<String, String> getDownloadableUrls() {
        HashMap map = new HashMap();
        int i10 = this.f28121p;
        if (i10 == 0) {
            map.put("video", this.A);
            if (!TextUtils.isEmpty(this.E)) {
                map.put(KEY_POSTROLL, this.E);
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("Advertisement created without adType!");
            }
            map.put("template", this.N);
            Iterator<Map.Entry<String, Pair<String, String>>> it = this.Q.entrySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next().getValue().first;
                if (f(str)) {
                    map.put(URLUtil.guessFileName(str, null, null), str);
                }
            }
        }
        return map;
    }

    public long getExpireTime() {
        return this.f28124s * 1000;
    }

    public String getId() {
        String str = this.f28122q;
        return str == null ? BuildConfig.FLAVOR : str;
    }

    public boolean getOmEnabled() {
        return this.U;
    }

    public String getOmExtraVast() {
        return this.V;
    }

    @Orientation
    public int getOrientation() {
        return this.B > this.C ? 1 : 0;
    }

    public String getPlacementId() {
        return this.f28117a0;
    }

    public long getServerRequestTimestamp() {
        return this.f28119c0;
    }

    public int getShowCloseDelay(boolean z10) {
        return (z10 ? this.f28130y : this.f28129x) * 1000;
    }

    @State
    public int getState() {
        return this.Z;
    }

    public String getTemplateType() {
        return this.T;
    }

    public String[] getTpatUrls(String str) {
        String str2 = "Unknown TPAT Event " + str;
        ArrayList<String> arrayList = this.f28126u.get(str);
        int i10 = this.f28121p;
        if (i10 == 0) {
            if (arrayList != null) {
                return (String[]) arrayList.toArray(f28116e0);
            }
            VungleLogger.warn(Advertisement.class.getSimpleName() + "#getTpatUrls", str2);
            return f28116e0;
        }
        if (i10 != 1) {
            throw new IllegalStateException("Unknown Advertisement Type!");
        }
        if (str.startsWith("checkpoint")) {
            String[] strArr = f28116e0;
            Checkpoint checkpoint = this.f28125t.get(Integer.parseInt(str.split("\\.")[1]) / 25);
            return checkpoint != null ? checkpoint.getUrls() : strArr;
        }
        if (arrayList != null) {
            return (String[]) arrayList.toArray(f28116e0);
        }
        VungleLogger.warn(Advertisement.class.getSimpleName() + "#getTpatUrls", str2);
        return f28116e0;
    }

    public long getTtDownload() {
        return this.f28118b0;
    }

    public boolean hasPostroll() {
        return !TextUtils.isEmpty(this.E);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((this.f28121p * 31) + this.f28122q.hashCode()) * 31) + this.f28125t.hashCode()) * 31) + this.f28126u.hashCode()) * 31) + this.f28127v) * 31) + this.f28128w.hashCode()) * 31) + this.f28129x) * 31) + this.f28130y) * 31) + this.f28131z) * 31) + this.A.hashCode()) * 31) + this.B) * 31) + this.C) * 31) + this.D.hashCode()) * 31) + this.E.hashCode()) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + this.H.hashCode()) * 31) + this.I.hashCode()) * 31) + this.K) * 31) + this.L.hashCode()) * 31) + this.M.hashCode()) * 31) + (this.U ? 1 : 0)) * 31;
        String str = this.V;
        return (int) (((long) ((((((((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + (this.W ? 1 : 0)) * 31) + this.X.hashCode()) * 31) + this.Y.hashCode()) * 31) + this.Z) * 31)) + this.f28119c0);
    }

    public boolean isCtaOverlayEnabled() {
        return this.F;
    }

    public boolean isRequiresNonMarketInstall() {
        return this.W;
    }

    public void setAdRequestStartTime(long j10) {
        this.adRequestStartTime = j10;
    }

    public void setAssetDownloadStartTime(long j10) {
        this.assetDownloadStartTime = j10;
    }

    public void setFinishedDownloadingTime(long j10) {
        this.assetDownloadDuration = j10 - this.assetDownloadStartTime;
        this.f28118b0 = j10 - this.adRequestStartTime;
    }

    public void setIncentivizedText(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            this.R.put("INCENTIVIZED_TITLE_TEXT", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            this.R.put("INCENTIVIZED_BODY_TEXT", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            this.R.put("INCENTIVIZED_CONTINUE_TEXT", str3);
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        this.R.put("INCENTIVIZED_CLOSE_TEXT", str4);
    }

    public void setMraidAssetDir(File file) {
        for (Map.Entry<String, Pair<String, String>> entry : this.Q.entrySet()) {
            String str = (String) entry.getValue().first;
            if (f(str)) {
                File file2 = new File(file, URLUtil.guessFileName(str, null, null));
                if (file2.exists()) {
                    this.P.put(entry.getKey(), "file://" + file2.getPath());
                }
            }
        }
        this.assetsFullyDownloaded = true;
    }

    public void setPlacementId(String str) {
        this.f28117a0 = str;
    }

    public void setState(@State int i10) {
        this.Z = i10;
    }

    public String toString() {
        return "Advertisement{adType=" + this.f28121p + ", identifier='" + this.f28122q + "', appID='" + this.f28123r + "', expireTime=" + this.f28124s + ", checkpoints=" + this.f28120o.u(this.f28125t, AdvertisementDBAdapter.f28134e) + ", dynamicEventsAndUrls=" + this.f28120o.u(this.f28126u, AdvertisementDBAdapter.f28135f) + ", delay=" + this.f28127v + ", campaign='" + this.f28128w + "', showCloseDelay=" + this.f28129x + ", showCloseIncentivized=" + this.f28130y + ", countdown=" + this.f28131z + ", videoUrl='" + this.A + "', videoWidth=" + this.B + ", videoHeight=" + this.C + ", md5='" + this.D + "', postrollBundleUrl='" + this.E + "', ctaOverlayEnabled=" + this.F + ", ctaClickArea=" + this.G + ", ctaDestinationUrl='" + this.H + "', ctaUrl='" + this.I + "', adConfig=" + this.J + ", retryCount=" + this.K + ", adToken='" + this.L + "', videoIdentifier='" + this.M + "', templateUrl='" + this.N + "', templateSettings=" + this.O + ", mraidFiles=" + this.P + ", cacheableAssets=" + this.Q + ", templateId='" + this.S + "', templateType='" + this.T + "', enableOm=" + this.U + ", oMSDKExtraVast='" + this.V + "', requiresNonMarketInstall=" + this.W + ", adMarketId='" + this.X + "', bidToken='" + this.Y + "', state=" + this.Z + "', assetDownloadStartTime='" + this.assetDownloadStartTime + "', assetDownloadDuration='" + this.assetDownloadDuration + "', adRequestStartTime='" + this.adRequestStartTime + "', requestTimestamp='" + this.f28119c0 + '}';
    }

    @Override // java.lang.Comparable
    public int compareTo(Advertisement advertisement) {
        if (advertisement == null) {
            return 1;
        }
        String str = advertisement.f28122q;
        if (str == null) {
            return this.f28122q == null ? 0 : 1;
        }
        String str2 = this.f28122q;
        if (str2 == null) {
            return -1;
        }
        return str2.compareTo(str);
    }

    public Advertisement(o oVar) throws IllegalArgumentException {
        String strO;
        this.f28120o = new f();
        this.f28126u = new h();
        this.G = true;
        this.P = new HashMap();
        this.Q = new HashMap();
        this.R = new HashMap();
        this.Z = 0;
        this.assetsFullyDownloaded = false;
        if (JsonUtil.hasNonNull(oVar, "ad_markup")) {
            o oVarC = oVar.C("ad_markup");
            if (JsonUtil.hasNonNull(oVarC, "adType")) {
                String strO2 = oVarC.A("adType").o();
                strO2.hashCode();
                if (strO2.equals("vungle_local")) {
                    this.f28121p = 0;
                    this.E = JsonUtil.hasNonNull(oVarC, "postBundle") ? oVarC.A("postBundle").o() : BuildConfig.FLAVOR;
                    strO = JsonUtil.hasNonNull(oVarC, "url") ? oVarC.A("url").o() : BuildConfig.FLAVOR;
                    this.O = new HashMap();
                    this.N = BuildConfig.FLAVOR;
                    this.S = BuildConfig.FLAVOR;
                    this.T = BuildConfig.FLAVOR;
                } else if (strO2.equals("vungle_mraid")) {
                    this.f28121p = 1;
                    this.E = BuildConfig.FLAVOR;
                    if (JsonUtil.hasNonNull(oVarC, "templateSettings")) {
                        this.O = new HashMap();
                        o oVarC2 = oVarC.C("templateSettings");
                        if (JsonUtil.hasNonNull(oVarC2, "normal_replacements")) {
                            for (Map.Entry<String, l> entry : oVarC2.C("normal_replacements").y()) {
                                if (!TextUtils.isEmpty(entry.getKey())) {
                                    this.O.put(entry.getKey(), (entry.getValue() == null || entry.getValue().q()) ? null : entry.getValue().o());
                                }
                            }
                        }
                        if (JsonUtil.hasNonNull(oVarC2, "cacheable_replacements")) {
                            strO = BuildConfig.FLAVOR;
                            for (Map.Entry<String, l> entry2 : oVarC2.C("cacheable_replacements").y()) {
                                if (!TextUtils.isEmpty(entry2.getKey()) && entry2.getValue() != null && JsonUtil.hasNonNull(entry2.getValue(), "url") && JsonUtil.hasNonNull(entry2.getValue(), ShareConstants.MEDIA_EXTENSION)) {
                                    String strO3 = entry2.getValue().l().A("url").o();
                                    this.Q.put(entry2.getKey(), new Pair<>(strO3, entry2.getValue().l().A(ShareConstants.MEDIA_EXTENSION).o()));
                                    if (entry2.getKey().equalsIgnoreCase("MAIN_VIDEO")) {
                                        strO = strO3;
                                    }
                                }
                            }
                        } else {
                            strO = BuildConfig.FLAVOR;
                        }
                        if (JsonUtil.hasNonNull(oVarC, "templateId")) {
                            this.S = oVarC.A("templateId").o();
                            if (JsonUtil.hasNonNull(oVarC, "template_type")) {
                                this.T = oVarC.A("template_type").o();
                                if (JsonUtil.hasNonNull(oVarC, "templateURL")) {
                                    this.N = oVarC.A("templateURL").o();
                                } else {
                                    throw new IllegalArgumentException("Template URL missing!");
                                }
                            } else {
                                throw new IllegalArgumentException("Template Type missing!");
                            }
                        } else {
                            throw new IllegalArgumentException("Missing templateID!");
                        }
                    } else {
                        throw new IllegalArgumentException("Missing template adConfig!");
                    }
                } else {
                    throw new IllegalArgumentException("Unknown Ad Type " + strO2 + "! Please add this ad type");
                }
                if (!TextUtils.isEmpty(strO)) {
                    this.A = strO;
                } else {
                    this.A = BuildConfig.FLAVOR;
                }
                if (JsonUtil.hasNonNull(oVarC, "id")) {
                    this.f28122q = oVarC.A("id").o();
                    if (JsonUtil.hasNonNull(oVarC, "campaign")) {
                        this.f28128w = oVarC.A("campaign").o();
                        if (JsonUtil.hasNonNull(oVarC, "app_id")) {
                            this.f28123r = oVarC.A("app_id").o();
                            if (JsonUtil.hasNonNull(oVarC, "expiry") && !oVarC.A("expiry").q()) {
                                long jN = oVarC.A("expiry").n();
                                if (jN > 0) {
                                    this.f28124s = jN;
                                } else {
                                    this.f28124s = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                this.f28124s = System.currentTimeMillis() / 1000;
                            }
                            if (JsonUtil.hasNonNull(oVarC, "tpat")) {
                                o oVarC3 = oVarC.C("tpat");
                                this.f28125t = new ArrayList(5);
                                int i10 = this.f28121p;
                                if (i10 != 0) {
                                    if (i10 != 1) {
                                        throw new IllegalArgumentException("Unknown Ad Type!");
                                    }
                                    for (int i11 = 0; i11 < 5; i11++) {
                                        int i12 = i11 * 25;
                                        String str = String.format(Locale.ENGLISH, "checkpoint.%d", Integer.valueOf(i12));
                                        this.f28125t.add(i11, JsonUtil.hasNonNull(oVarC3, str) ? new Checkpoint(oVarC3.B(str), (byte) i12) : null);
                                    }
                                } else if (JsonUtil.hasNonNull(oVarC3, "play_percentage")) {
                                    i iVarB = oVarC3.B("play_percentage");
                                    for (int i13 = 0; i13 < iVarB.size(); i13++) {
                                        if (iVarB.v(i13) != null) {
                                            this.f28125t.add(new Checkpoint(iVarB.v(i13).l()));
                                        }
                                    }
                                    Collections.sort(this.f28125t);
                                }
                                TreeSet<String> treeSet = new TreeSet(oVarC3.H());
                                treeSet.remove("moat");
                                treeSet.removeAll(f28115d0);
                                if (!treeSet.isEmpty()) {
                                    for (String str2 : treeSet) {
                                        i iVarK = oVarC3.A(str2).k();
                                        ArrayList<String> arrayList = new ArrayList<>();
                                        for (int i14 = 0; i14 < iVarK.size(); i14++) {
                                            if (iVarK.v(i14) != null && !"null".equalsIgnoreCase(iVarK.v(i14).toString())) {
                                                arrayList.add(i14, iVarK.v(i14).o());
                                            } else {
                                                arrayList.add(i14, BuildConfig.FLAVOR);
                                            }
                                        }
                                        this.f28126u.put(str2, arrayList);
                                    }
                                }
                            } else {
                                this.f28125t = new ArrayList();
                            }
                            if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_DELAY)) {
                                this.f28127v = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_DELAY).j();
                            } else {
                                this.f28127v = 0;
                            }
                            if (JsonUtil.hasNonNull(oVarC, "showClose")) {
                                this.f28129x = oVarC.A("showClose").j();
                            } else {
                                this.f28129x = 0;
                            }
                            if (JsonUtil.hasNonNull(oVarC, "showCloseIncentivized")) {
                                this.f28130y = oVarC.A("showCloseIncentivized").j();
                            } else {
                                this.f28130y = 0;
                            }
                            if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_COUNTDOWN)) {
                                this.f28131z = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_COUNTDOWN).j();
                            } else {
                                this.f28131z = 0;
                            }
                            if (JsonUtil.hasNonNull(oVarC, "videoWidth")) {
                                this.B = oVarC.A("videoWidth").j();
                                if (JsonUtil.hasNonNull(oVarC, "videoHeight")) {
                                    this.C = oVarC.A("videoHeight").j();
                                    if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_MD5)) {
                                        this.D = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_MD5).o();
                                    } else {
                                        this.D = BuildConfig.FLAVOR;
                                    }
                                    if (JsonUtil.hasNonNull(oVarC, "cta_overlay")) {
                                        o oVarC4 = oVarC.C("cta_overlay");
                                        if (JsonUtil.hasNonNull(oVarC4, "enabled")) {
                                            this.F = oVarC4.A("enabled").c();
                                        } else {
                                            this.F = false;
                                        }
                                        if (JsonUtil.hasNonNull(oVarC4, "click_area") && !oVarC4.A("click_area").o().isEmpty() && oVarC4.A("click_area").g() == 0.0d) {
                                            this.G = false;
                                        }
                                    } else {
                                        this.F = false;
                                    }
                                    this.H = JsonUtil.hasNonNull(oVarC, "callToActionDest") ? oVarC.A("callToActionDest").o() : BuildConfig.FLAVOR;
                                    this.I = JsonUtil.hasNonNull(oVarC, "callToActionUrl") ? oVarC.A("callToActionUrl").o() : BuildConfig.FLAVOR;
                                    if (JsonUtil.hasNonNull(oVarC, "retryCount")) {
                                        this.K = oVarC.A("retryCount").j();
                                    } else {
                                        this.K = 1;
                                    }
                                    if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN)) {
                                        this.L = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN).o();
                                        if (JsonUtil.hasNonNull(oVarC, "video_object_id")) {
                                            this.M = oVarC.A("video_object_id").o();
                                        } else {
                                            this.M = BuildConfig.FLAVOR;
                                        }
                                        if (JsonUtil.hasNonNull(oVarC, "requires_sideloading")) {
                                            this.W = oVarC.A("requires_sideloading").c();
                                        } else {
                                            this.W = false;
                                        }
                                        if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_MARKET_ID)) {
                                            this.X = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_MARKET_ID).o();
                                        } else {
                                            this.X = BuildConfig.FLAVOR;
                                        }
                                        if (JsonUtil.hasNonNull(oVarC, AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN)) {
                                            this.Y = oVarC.A(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_BID_TOKEN).o();
                                        } else {
                                            this.Y = BuildConfig.FLAVOR;
                                        }
                                        if (JsonUtil.hasNonNull(oVarC, "timestamp")) {
                                            this.f28119c0 = oVarC.A("timestamp").n();
                                        } else {
                                            this.f28119c0 = 1L;
                                        }
                                        o asObject = JsonUtil.getAsObject(JsonUtil.getAsObject(oVarC, "viewability"), "om");
                                        this.U = JsonUtil.getAsBoolean(asObject, "is_enabled", false);
                                        this.V = JsonUtil.getAsString(asObject, "extra_vast", null);
                                        this.J = new AdConfig();
                                        return;
                                    }
                                    throw new IllegalArgumentException("AdToken missing!");
                                }
                                throw new IllegalArgumentException("Missing video height!");
                            }
                            throw new IllegalArgumentException("Missing video width!");
                        }
                        throw new IllegalArgumentException("Missing app Id, cannot process advertisement!");
                    }
                    throw new IllegalArgumentException("Missing campaign information, cannot process advertisement!");
                }
                throw new IllegalArgumentException("Missing identifier, cannot process advertisement!");
            }
            throw new IllegalArgumentException("Advertisement did not contain an adType!");
        }
        throw new IllegalArgumentException("JSON does not contain ad markup!");
    }
}
