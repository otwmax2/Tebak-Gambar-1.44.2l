###### Class com.google.android.gms.internal.ads.zzepk (com.google.android.gms.internal.ads.zzepk)
.class public final Lcom/google/android/gms/internal/ads/zzepk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepk;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepk;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;
    .registers 12

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_b6

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bk"

    .line 4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sk"

    .line 5
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    const/4 v7, -0x1

    .line 6
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_32

    if-eq v3, v7, :cond_30

    if-eq v3, v6, :cond_2e

    const/4 v3, 0x0

    goto :goto_33

    :cond_2e
    const/4 v3, 0x3

    goto :goto_33

    :cond_30
    const/4 v3, 0x2

    goto :goto_33

    :cond_32
    const/4 v3, 0x1

    .line 7
    :goto_33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b2

    if-nez v3, :cond_43

    goto/16 :goto_b2

    :cond_43
    const-string v8, "/"

    .line 8
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 9
    array-length v8, v5

    const/4 v9, 0x0

    if-gt v8, v6, :cond_69

    if-nez v8, :cond_50

    goto :goto_69

    :cond_50
    if-ne v8, v7, :cond_59

    .line 10
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 11
    aget-object v5, v5, v1

    goto :goto_61

    .line 12
    :cond_59
    aget-object v6, v5, v1

    invoke-virtual {p0, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 13
    aget-object v5, v5, v7

    .line 14
    :goto_61
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :cond_69
    :goto_69
    if-eqz v9, :cond_b2

    add-int/lit8 v3, v3, -0x1

    if-eqz v3, :cond_a9

    if-eq v3, v7, :cond_7f

    .line 15
    instance-of v3, v9, Ljava/lang/Boolean;

    if-eqz v3, :cond_b2

    .line 16
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b2

    .line 17
    :cond_7f
    instance-of v3, v9, Ljava/lang/Integer;

    if-eqz v3, :cond_8d

    .line 18
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b2

    .line 19
    :cond_8d
    instance-of v3, v9, Ljava/lang/Long;

    if-eqz v3, :cond_9b

    .line 20
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b2

    .line 21
    :cond_9b
    instance-of v3, v9, Ljava/lang/Float;

    if-eqz v3, :cond_b2

    .line 22
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b2

    .line 23
    :cond_a9
    instance-of v3, v9, Ljava/lang/String;

    if-eqz v3, :cond_b2

    .line 24
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_b6
    return-object v0
.end method


# virtual methods
.method final synthetic b()Lcom/google/android/gms/internal/ads/zzepm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->H5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    .line 5
    :cond_14
    :try_start_14
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->b:Landroid/content/Context;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepk;->a(Landroid/content/Context;Lorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzepj;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :catch_25
    move-exception v0

    const-string v1, "JSON parsing error"

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x25

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepk;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzepi;-><init>(Lcom/google/android/gms/internal/ads/zzepk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzepi (com.google.android.gms.internal.ads.zzepi)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzepi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzepk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzepk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepi;->a:Lcom/google/android/gms/internal/ads/zzepk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->a:Lcom/google/android/gms/internal/ads/zzepk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepk;->b()Lcom/google/android/gms/internal/ads/zzepm;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzepj (com.google.android.gms.internal.ads.zzepj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzepj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepj;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepj;->a:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "shared_pref"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
