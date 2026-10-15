###### Class com.google.android.gms.internal.ads.zzbrt (com.google.android.gms.internal.ads.zzbrt)
.class public final Lcom/google/android/gms/internal/ads/zzbrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/zzbxr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalQueryInfoGenerator.class"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/AdFormat;

.field private final c:Lcom/google/android/gms/ads/internal/client/zzdx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzdx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrt;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrt;->b:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbrt;->c:Lcom/google/android/gms/ads/internal/client/zzdx;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxr;
    .registers 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbrt;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbrt;->d:Lcom/google/android/gms/internal/ads/zzbxr;

    if-nez v1, :cond_16

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->p(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzbxr;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbrt;->d:Lcom/google/android/gms/internal/ads/zzbxr;

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbrt;->d:Lcom/google/android/gms/internal/ads/zzbxr;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrt;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxr;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Internal Error, query info generator is null."

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->a(Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrt;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbrt;->c:Lcom/google/android/gms/ads/internal/client/zzdx;

    if-nez v2, :cond_22

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzm;->a()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    goto :goto_2a

    .line 5
    :cond_22
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzp;->a:Lcom/google/android/gms/ads/internal/client/zzp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbrt;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/ads/internal/client/zzp;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    .line 7
    :goto_2a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbxv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbrt;->b:Lcom/google/android/gms/ads/AdFormat;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzbxv;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzl;)V

    :try_start_36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrs;

    .line 9
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbrs;-><init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbxr;->l3(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxv;Lcom/google/android/gms/internal/ads/zzbxo;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    const-string v0, "Internal Error."

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->a(Ljava/lang/String;)V

    return-void
.end method
