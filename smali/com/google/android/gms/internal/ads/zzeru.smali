###### Class com.google.android.gms.internal.ads.zzeru (com.google.android.gms.internal.ads.zzeru)
.class public final Lcom/google/android/gms/internal/ads/zzeru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field final b:Ljava/lang/String;

.field final c:Lcom/google/android/gms/internal/ads/zzbxx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbxx;Lcom/google/android/gms/internal/ads/zzfuu;Ljava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeru;->c:Lcom/google/android/gms/internal/ads/zzbxx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeru;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeru;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x2f

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->r5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    .line 6
    :cond_1b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzfut;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfuj;->c([Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzert;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzert;-><init>(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfut;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 8
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfui;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzert (com.google.android.gms.internal.ads.zzert)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzert;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfut;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfut;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfut;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzert;->a:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzert;->b:Lcom/google/android/gms/internal/ads/zzfut;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzert;->a:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzert;->b:Lcom/google/android/gms/internal/ads/zzfut;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzerv;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzerv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
