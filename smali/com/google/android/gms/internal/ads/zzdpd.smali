###### Class com.google.android.gms.internal.ads.zzdpd (com.google.android.gms.internal.ads.zzdpd)
.class public final Lcom/google/android/gms/internal/ads/zzdpd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Lcom/google/android/gms/internal/ads/zzbyn;

.field private final c:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzeyx;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpp;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpd;->b:Lcom/google/android/gms/internal/ads/zzbyn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpd;->c:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpd;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdpd;->e:Ljava/lang/String;

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbar;->C6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_24

    return-void

    :cond_24
    invoke-static {p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->e(Lcom/google/android/gms/internal/ads/zzeyx;)I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    const-string v1, "scar"

    if-eqz v0, :cond_8c

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "se"

    if-eq v0, v2, :cond_4b

    if-eq v0, v3, :cond_45

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3f

    const-string v0, "r_both"

    .line 5
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_3f
    const-string v0, "r_adstring"

    .line 6
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_45
    const-string v0, "r_adinfo"

    .line 7
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_4b
    const-string v0, "query_g"

    .line 8
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_50
    const-string v0, "true"

    .line 9
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "ad_format"

    .line 12
    invoke-virtual {p1, v0, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    if-ne p2, v3, :cond_73

    const-string p2, "rid"

    .line 13
    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->D:Ljava/lang/String;

    const-string p2, "ragent"

    .line 14
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdpd;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->b(Lcom/google/android/gms/ads/internal/client/zzl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "rtype"

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdpd;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8c
    const-string p2, "false"

    .line 17
    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzeyo;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyn;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeyc;

    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->b:I

    const-string v1, "ad_format"

    packed-switch v0, :pswitch_data_74

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "unknown"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 5
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "app_open_ad"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpd;->b:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyn;->i()Z

    move-result v2

    if-eq v1, v2, :cond_39

    const-string v1, "0"

    goto :goto_3b

    :cond_39
    const-string v1, "1"

    :goto_3b
    const-string v2, "as"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :pswitch_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "rewarded"

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :pswitch_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "native_advanced"

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :pswitch_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "native_express"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :pswitch_59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "interstitial"

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    :pswitch_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "banner"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_68
    :goto_68
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    const-string v0, "gqi"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdpd;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_24
    .end packed-switch
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "cnt"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    .line 3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "gnt"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method
