###### Class com.google.android.gms.internal.ads.zzfgp (com.google.android.gms.internal.ads.zzfgp)
.class public final Lcom/google/android/gms/internal/ads/zzfgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static a:Landroid/view/WindowManager;

.field private static final b:[Ljava/lang/String;

.field static c:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "width"

    const-string v3, "height"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgp;->b:[Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    return-void
.end method

.method public static a(IIII)Lorg/json/JSONObject;
    .registers 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "x"

    int-to-float p0, p0

    sget v2, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    div-float/2addr p0, v2

    float-to-double v2, p0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "y"

    int-to-float p1, p1

    sget v1, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    div-float/2addr p1, v1

    float-to-double v1, p1

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "width"

    int-to-float p1, p2

    sget p2, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "height"

    int-to-float p1, p3

    sget p2, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p0

    const-string p1, "Error with creating viewStateObject"

    .line 6
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_34
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "adSessionId"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string p1, "Error with setting ad session id"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "childViews"

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_10

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_10
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static d(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfgt;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgt;->a()Lcom/google/android/gms/internal/ads/zzfgb;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgt;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    :try_start_20
    const-string p1, "isFriendlyObstructionFor"

    .line 4
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionClass"

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionPurpose"

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgb;->a()Lcom/google/android/gms/internal/ads/zzffq;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "friendlyObstructionReason"

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception p0

    const-string p1, "Error with setting friendly obstruction"

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .registers 3

    :try_start_0
    const-string v0, "hasWindowFocus"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string p1, "Error with setting not visible reason"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "notVisibleReason"

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string p1, "Error with setting not visible reason"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_18

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/google/android/gms/internal/ads/zzfgp;->a:Landroid/view/WindowManager;

    :cond_18
    return-void
.end method

.method public static h(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    goto :goto_7

    :catch_6
    move-exception p0

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONException during JSONObject.put for name ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static i(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgp;->a:Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgp;->a:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Lcom/google/android/gms/internal/ads/zzfgp;->c:F

    div-float/2addr v1, v2

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    :try_start_20
    const-string v2, "width"

    float-to-double v3, v1

    .line 5
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "height"

    float-to-double v2, v0

    .line 6
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static j(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_7

    :cond_6
    return v0

    :cond_7
    :goto_7
    const/4 v1, 0x0

    if-eqz p0, :cond_ab

    if-nez p1, :cond_e

    goto/16 :goto_ab

    :cond_e
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgp;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x4

    if-ge v3, v4, :cond_27

    aget-object v4, v2, v3

    .line 1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_24

    goto/16 :goto_ab

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_27
    const-string v2, "adSessionId"

    const-string v3, ""

    .line 2
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "hasWindowFocus"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const-string v2, "isFriendlyObstructionFor"

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v4, :cond_60

    if-nez v2, :cond_60

    goto :goto_7e

    .line 10
    :cond_60
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzfgp;->k(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_ab

    const/4 v5, 0x0

    .line 11
    :goto_67
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7e

    .line 12
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_7e
    :goto_7e
    const-string v2, "childViews"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 16
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p0, :cond_8c

    if-eqz p1, :cond_aa

    .line 17
    :cond_8c
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfgp;->k(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_ab

    const/4 v2, 0x0

    .line 18
    :goto_93
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_aa

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 20
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 21
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfgp;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_ab

    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    :cond_aa
    return v0

    :cond_ab
    :goto_ab
    return v1
.end method

.method private static k(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_7

    :cond_6
    return v0

    :cond_7
    :goto_7
    const/4 v1, 0x0

    if-eqz p0, :cond_18

    if-nez p1, :cond_d

    goto :goto_18

    .line 1
    :cond_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ne p0, p1, :cond_18

    return v0

    :cond_18
    :goto_18
    return v1
.end method
