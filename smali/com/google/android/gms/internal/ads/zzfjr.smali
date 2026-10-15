###### Class com.google.android.gms.internal.ads.zzfjr (com.google.android.gms.internal.ads.zzfjr)
.class public final Lcom/google/android/gms/internal/ads/zzfjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzfju;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final b:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfju;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->b:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjr;
    .registers 7

    const-string p2, "GASS"

    :try_start_2
    const-string v0, "com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger"
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzfit; {:try_start_2 .. :try_end_4} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_4} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_4} :catch_47

    .line 1
    :try_start_4
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_39

    .line 2
    :try_start_c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    move-object v2, v1

    goto :goto_27

    :cond_15
    const-string v2, "com.google.android.gms.gass.internal.clearcut.IGassClearcut"

    .line 3
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzfju;

    if-eqz v3, :cond_22

    .line 5
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfju;

    goto :goto_27

    :cond_22
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfjs;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzfjs;-><init>(Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_40

    .line 6
    :goto_27
    :try_start_27
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 7
    invoke-interface {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfju;->I9(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "GassClearcutLogger Initialized."

    .line 8
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(Lcom/google/android/gms/internal/ads/zzfju;)V
    :try_end_38
    .catch Lcom/google/android/gms/internal/ads/zzfit; {:try_start_27 .. :try_end_38} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_38} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_38} :catch_47

    return-object p0

    :catch_39
    move-exception p0

    .line 9
    :try_start_3a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfit;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_40

    :catch_40
    move-exception p0

    .line 11
    :try_start_41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfit;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_47
    .catch Lcom/google/android/gms/internal/ads/zzfit; {:try_start_41 .. :try_end_47} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_47} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_47} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_47} :catch_47

    :catch_47
    const-string p0, "Cannot dynamite load clearcut"

    .line 13
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfjv;

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjv;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(Lcom/google/android/gms/internal/ads/zzfju;)V

    return-object p1
.end method

.method public static c()Lcom/google/android/gms/internal/ads/zzfjr;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfjv;-><init>()V

    const-string v1, "GASS"

    const-string v2, "Clearcut logging disabled"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(Lcom/google/android/gms/internal/ads/zzfju;)V

    return-object v1
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/zzfjq;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfjq;-><init>(Lcom/google/android/gms/internal/ads/zzfjr;[BLcom/google/android/gms/internal/ads/zzfjp;)V

    return-object v0
.end method
