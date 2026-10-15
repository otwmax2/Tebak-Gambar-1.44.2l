###### Class com.google.android.gms.internal.ads.zzbmy (com.google.android.gms.internal.ads.zzbmy)
.class public final Lcom/google/android/gms/internal/ads/zzbmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/zzbmy;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzbmy;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbmy;->b:Lcom/google/android/gms/internal/ads/zzbmy;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmy;->b:Lcom/google/android/gms/internal/ads/zzbmy;

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbmy;->b:Lcom/google/android/gms/internal/ads/zzbmy;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmy;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbmx;

    .line 2
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmx;-><init>(Lcom/google/android/gms/internal/ads/zzbmy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbmx (com.google.android.gms.internal.ads.zzbmx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbmy;

.field public final synthetic p:Landroid/content/Context;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbmy;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmx;->o:Lcom/google/android/gms/internal/ads/zzbmy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmx;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmx;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmx;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmx;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->f0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "measurementEnabled"

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->m0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "ad_storage"

    const-string v4, "denied"

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "analytics_storage"

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const-string v3, "FA-Ads"

    const-string v4, "am"

    .line 10
    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object v1

    :try_start_47
    const-string v2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbmw;->a:Lcom/google/android/gms/internal/ads/zzbmw;

    .line 11
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcgc;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbmv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbmv;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcgc;->H3(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcfz;)V
    :try_end_5d
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_47 .. :try_end_5d} :catch_62
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_5d} :catch_60
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception v0

    goto :goto_63

    :catch_60
    move-exception v0

    goto :goto_63

    :catch_62
    move-exception v0

    :goto_63
    const-string v1, "#007 Could not call remote method."

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbmw (com.google.android.gms.internal.ads.zzbmw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzbmw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmw;->a:Lcom/google/android/gms/internal/ads/zzbmw;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgb;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcgc;

    move-result-object p1

    return-object p1
.end method
