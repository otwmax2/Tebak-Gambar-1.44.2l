###### Class com.google.android.gms.internal.ads.zzfdj (com.google.android.gms.internal.ads.zzfdj)
.class public final Lcom/google/android/gms/internal/ads/zzfdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/google/android/gms/internal/ads/zzfdp;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfdp;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->b:Lcom/google/android/gms/internal/ads/zzfdp;

    const-string v1, "new_csi"

    const-string v2, "1"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfdj;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string v2, "action"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfdj;-><init>()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string v2, "request_id"

    .line 2
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->b:Lcom/google/android/gms/internal/ads/zzfdp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdp;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->b:Lcom/google/android/gms/internal/ads/zzfdp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfdp;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzeyc;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->x:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    const-string v1, "gqi"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object p0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzbyn;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 5

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfdj;->g(Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyc;

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->b:I

    const-string v0, "ad_format"

    packed-switch p1, :pswitch_data_6c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "unknown"

    .line 6
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string v1, "app_open_ad"

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbyn;->i()Z

    move-result p2

    if-eq v0, p2, :cond_3c

    const-string p2, "0"

    goto :goto_3e

    :cond_3c
    const-string p2, "1"

    :goto_3e
    const-string v0, "as"

    .line 8
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "rewarded"

    .line 9
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "native_advanced"

    .line 10
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "native_express"

    .line 11
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "interstitial"

    .line 12
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    :pswitch_64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    const-string p2, "banner"

    .line 13
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_6b
    return-object p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_27
    .end packed-switch
.end method

.method public final i(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfdj;
    .registers 5

    const-string v0, "cnt"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "gnt"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object p0
.end method

.method public final j()Ljava/util/Map;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->b:Lcom/google/android/gms/internal/ads/zzfdp;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfdp;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfdo;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfdo;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfdo;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_25
    return-object v0
.end method
