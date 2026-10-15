###### Class com.google.android.gms.ads.internal.client.a (com.google.android.gms.ads.internal.client.a)
.class final Lcom/google/android/gms/ads/internal/client/a;
.super Lcom/google/android/gms/ads/internal/client/n;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/google/android/gms/ads/internal/client/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/a;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->r(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzce;->l1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbrc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

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

    if-eqz v0, :cond_53

    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    const-string v2, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzz;->a:Lcom/google/android/gms/ads/internal/client/zzz;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrf;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrf;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbrb;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbrc;

    move-result-object v0
    :try_end_31
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_17 .. :try_end_31} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_31} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_31} :catch_32

    goto :goto_5f

    :catch_32
    move-exception v0

    goto :goto_37

    :catch_34
    move-exception v0

    goto :goto_37

    :catch_36
    move-exception v0

    .line 7
    :goto_37
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/a;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    .line 8
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->q(Lcom/google/android/gms/ads/internal/client/zzaw;Lcom/google/android/gms/internal/ads/zzbsh;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/a;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->n(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v1

    const-string v2, "ClientApiBroker.createAdOverlay"

    .line 9
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5f

    .line 10
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/a;->c:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->l(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbqz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/a;->b:Landroid/app/Activity;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqz;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbrc;

    move-result-object v0

    :goto_5f
    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.client.zzz (com.google.android.gms.ads.internal.client.zzz)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/ads/internal/client/zzz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzz;->a:Lcom/google/android/gms/ads/internal/client/zzz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbre;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object p1

    return-object p1
.end method
