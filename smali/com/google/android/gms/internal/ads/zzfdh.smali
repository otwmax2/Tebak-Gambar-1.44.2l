###### Class com.google.android.gms.internal.ads.zzfdh (com.google.android.gms.internal.ads.zzfdh)
.class public final Lcom/google/android/gms/internal/ads/zzfdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/zzbzf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzf;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdh;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdh;->b:Lcom/google/android/gms/internal/ads/zzbzf;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdh;->b:Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzf;->o(Ljava/lang/String;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdh;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfdg;-><init>(Lcom/google/android/gms/internal/ads/zzfdh;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfdg (com.google.android.gms.internal.ads.zzfdg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzfdh;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfdh;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->o:Lcom/google/android/gms/internal/ads/zzfdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdg;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdg;->o:Lcom/google/android/gms/internal/ads/zzfdh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdg;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdh;->a(Ljava/lang/String;)V

    return-void
.end method
