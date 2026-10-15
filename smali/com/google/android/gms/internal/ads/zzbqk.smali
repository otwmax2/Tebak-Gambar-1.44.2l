###### Class com.google.android.gms.internal.ads.zzbqk (com.google.android.gms.internal.ads.zzbqk)
.class public final Lcom/google/android/gms/internal/ads/zzbqk;
.super Lcom/google/android/gms/ads/nativead/NativeAd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbfu;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/internal/ads/zzbqj;

.field private final d:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .registers 7

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    const/4 v1, 0x0

    .line 3
    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->v()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_35

    .line 6
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbdw;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v2

    goto :goto_36

    :cond_35
    move-object v2, v1

    :goto_36
    if-eqz v2, :cond_20

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqk;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbqj;

    .line 7
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbqj;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_42} :catch_43

    goto :goto_20

    :catch_43
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_47
    :try_start_47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->t()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_53
    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_68

    .line 13
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzcv;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzcw;

    move-result-object v2

    goto :goto_69

    :cond_68
    move-object v2, v1

    :goto_69
    if-eqz v2, :cond_53

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqk;->e:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzcx;

    .line 14
    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzcx;-><init>(Lcom/google/android/gms/ads/internal/client/zzcw;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_75} :catch_76

    goto :goto_53

    :catch_76
    move-exception p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_7a
    :try_start_7a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->i()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p1

    if-eqz p1, :cond_8c

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqj;

    .line 18
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbqj;-><init>(Lcom/google/android/gms/internal/ads/zzbdx;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_87} :catch_88

    goto :goto_8d

    :catch_88
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8c
    move-object v2, v1

    .line 20
    :goto_8d
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqk;->c:Lcom/google/android/gms/internal/ads/zzbqj;

    :try_start_8f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfu;->g()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object p1

    if-eqz p1, :cond_a8

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 22
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfu;->g()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_a2} :catch_a4

    move-object v1, p1

    goto :goto_a8

    :catch_a4
    move-exception p1

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_a8
    :goto_a8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqk;->d:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->n()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->r()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->e()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->d(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic e()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqk;->a:Lcom/google/android/gms/internal/ads/zzbfu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfu;->l()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method
