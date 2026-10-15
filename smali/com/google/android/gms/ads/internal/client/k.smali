###### Class com.google.android.gms.ads.internal.client.k (com.google.android.gms.ads.internal.client.k)
.class final Lcom/google/android/gms/ads/internal/client/k;
.super Lcom/google/android/gms/ads/internal/client/n;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/ads/internal/client/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/k;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->r(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzey;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzey;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    const v1, 0xdbd26a0

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->T0(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl"

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzap;->a:Lcom/google/android/gms/ads/internal/client/zzap;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzcp;

    const v3, 0xdbd26a0

    .line 6
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/ads/internal/client/zzcp;->A9(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_34

    goto :goto_70

    :cond_34
    const-string v2, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 7
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz v3, :cond_42

    .line 9
    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzco;

    :goto_40
    move-object v1, v2

    goto :goto_70

    :cond_42
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzcm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/client/zzcm;-><init>(Landroid/os/IBinder;)V
    :try_end_47
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_18 .. :try_end_47} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_47} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_47} :catch_48

    goto :goto_40

    :catch_48
    move-exception v0

    goto :goto_4d

    :catch_4a
    move-exception v0

    goto :goto_4d

    :catch_4c
    move-exception v0

    .line 10
    :goto_4d
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/k;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaw;->q(Lcom/google/android/gms/ads/internal/client/zzaw;Lcom/google/android/gms/internal/ads/zzbsh;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/k;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->n(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v2

    const-string v3, "ClientApiBroker.getMobileAdsSettingsManager"

    .line 12
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_70

    .line 13
    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/k;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->g(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/ads/internal/client/zzeq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/k;->b:Landroid/content/Context;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzeq;->c(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object v1

    :goto_70
    return-object v1
.end method

###### Class com.google.android.gms.ads.internal.client.zzap (com.google.android.gms.ads.internal.client.zzap)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/ads/internal/client/zzap;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzap;->a:Lcom/google/android/gms/ads/internal/client/zzap;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_18

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzcp;

    if-eqz v1, :cond_12

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzcp;

    goto :goto_18

    :cond_12
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzcp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzcp;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method
