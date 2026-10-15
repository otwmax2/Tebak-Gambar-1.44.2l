###### Class com.google.android.gms.ads.internal.client.n (com.google.android.gms.ads.internal.client.n)
.class abstract Lcom/google/android/gms/ads/internal/client/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/ads/internal/client/zzce;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_24

    const-string v1, "ClientApi class is not an instance of IBinder."

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    goto :goto_42

    .line 7
    :cond_24
    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_29

    goto :goto_42

    :cond_29
    const-string v2, "com.google.android.gms.ads.internal.client.IClientApi"

    .line 8
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/google/android/gms/ads/internal/client/zzce;

    if-eqz v3, :cond_37

    .line 10
    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzce;

    :goto_35
    move-object v0, v2

    goto :goto_42

    :cond_37
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzcc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/client/zzcc;-><init>(Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_35

    :catch_3d
    const-string v1, "Failed to instantiate ClientApi class."

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 12
    :goto_42
    sput-object v0, Lcom/google/android/gms/ads/internal/client/n;->a:Lcom/google/android/gms/ads/internal/client/zzce;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e()Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/n;->a:Lcom/google/android/gms/ads/internal/client/zzce;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/client/n;->b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const-string v2, "Cannot invoke local loader using ClientApi class."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_11
    const-string v0, "ClientApi class cannot be loaded."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-object v1
.end method

.method private final f()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/n;->c()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "Cannot invoke remote loader."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected abstract b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final d(Landroid/content/Context;Z)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x1

    if-nez p2, :cond_15

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    const v1, 0xbdfcb8

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->y(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_15

    const-string p2, "Google Play Services is not available."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_15
    const-string v1, "com.google.android.gms.ads.dynamite"

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-le v2, v1, :cond_24

    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    const/4 v1, 0x1

    :goto_25
    xor-int/2addr v1, v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcf;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    :goto_37
    const/4 p2, 0x0

    goto :goto_4d

    .line 8
    :cond_39
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcf;->b:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 p2, 0x1

    const/4 v3, 0x1

    goto :goto_4d

    :cond_4a
    or-int/2addr p2, v1

    move v3, p2

    goto :goto_37

    :goto_4d
    if-eqz v3, :cond_5c

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;->e()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a2

    if-nez p2, :cond_a2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;->f()Ljava/lang/Object;

    move-result-object p1

    goto :goto_a2

    .line 12
    :cond_5c
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;->f()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_9a

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbct;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->e()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_9a

    new-instance v6, Landroid/os/Bundle;

    .line 15
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "dynamite_load"

    .line 16
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_missing"

    .line 17
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->c()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v5, "gmob-apps"

    move-object v3, p1

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbyt;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    :cond_9a
    if-nez p2, :cond_a1

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;->e()Ljava/lang/Object;

    move-result-object p1

    goto :goto_a2

    :cond_a1
    move-object p1, p2

    :cond_a2
    :goto_a2
    if-nez p1, :cond_a8

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/n;->a()Ljava/lang/Object;

    move-result-object p1

    :cond_a8
    return-object p1
.end method
