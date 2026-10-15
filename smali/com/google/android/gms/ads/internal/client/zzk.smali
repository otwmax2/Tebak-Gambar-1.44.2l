###### Class com.google.android.gms.ads.internal.client.zzk (com.google.android.gms.ads.internal.client.zzk)
.class public final Lcom/google/android/gms/ads/internal/client/zzk;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private c:Lcom/google/android/gms/internal/ads/zzbsh;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_18

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    if-eqz v1, :cond_12

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbv;

    goto :goto_18

    :cond_12
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzbv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method public final c(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;I)Lcom/google/android/gms/ads/internal/client/zzbu;
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

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

    const-string v1, "com.google.android.gms.ads.internal.client.IAdManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    .line 4
    :try_start_18
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    const-string v0, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl"

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzj;->a:Lcom/google/android/gms/ads/internal/client/zzj;

    .line 5
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/ads/internal/client/zzbv;

    const v8, 0xdbd26a0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    .line 6
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/client/zzbv;->A9(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;II)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_35

    goto :goto_5c

    .line 7
    :cond_35
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 8
    instance-of p4, p3, Lcom/google/android/gms/ads/internal/client/zzbu;

    if-eqz p4, :cond_41

    .line 9
    check-cast p3, Lcom/google/android/gms/ads/internal/client/zzbu;

    :goto_3f
    move-object v2, p3

    goto :goto_5c

    :cond_41
    new-instance p3, Lcom/google/android/gms/ads/internal/client/zzbs;

    invoke-direct {p3, p2}, Lcom/google/android/gms/ads/internal/client/zzbs;-><init>(Landroid/os/IBinder;)V
    :try_end_46
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_18 .. :try_end_46} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_46} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_46} :catch_47

    goto :goto_3f

    :catch_47
    move-exception p2

    goto :goto_4c

    :catch_49
    move-exception p2

    goto :goto_4c

    :catch_4b
    move-exception p2

    .line 10
    :goto_4c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzk;->c:Lcom/google/android/gms/internal/ads/zzbsh;

    const-string p3, "AdManagerCreator.newAdManagerByDynamiteLoader"

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "#007 Could not call remote method."

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5c
    return-object v2

    .line 13
    :cond_5d
    :try_start_5d
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/ads/internal/client/zzbv;

    const v8, 0xdbd26a0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    .line 15
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/client/zzbv;->A9(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_76

    goto :goto_88

    .line 16
    :cond_76
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 17
    instance-of p3, p2, Lcom/google/android/gms/ads/internal/client/zzbu;

    if-eqz p3, :cond_82

    .line 18
    check-cast p2, Lcom/google/android/gms/ads/internal/client/zzbu;

    :goto_80
    move-object v2, p2

    goto :goto_88

    :cond_82
    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzbs;

    invoke-direct {p2, p1}, Lcom/google/android/gms/ads/internal/client/zzbs;-><init>(Landroid/os/IBinder;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_87} :catch_8b
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_5d .. :try_end_87} :catch_89

    goto :goto_80

    :goto_88
    return-object v2

    :catch_89
    move-exception p1

    goto :goto_8c

    :catch_8b
    move-exception p1

    :goto_8c
    const-string p2, "Could not create remote AdManager."

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

###### Class com.google.android.gms.ads.internal.client.zzj (com.google.android.gms.ads.internal.client.zzj)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/ads/internal/client/zzj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzj;->a:Lcom/google/android/gms/ads/internal/client/zzj;

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
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    if-eqz v1, :cond_12

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbv;

    goto :goto_18

    :cond_12
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzbv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method
