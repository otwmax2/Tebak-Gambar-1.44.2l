###### Class com.google.android.gms.internal.ads.zzctz (com.google.android.gms.internal.ads.zzctz)
.class public final Lcom/google/android/gms/internal/ads/zzctz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Landroid/os/Bundle;

.field private final d:Lcom/google/android/gms/internal/ads/zzeyp;

.field private final e:Lcom/google/android/gms/internal/ads/zzctr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzcty;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->a(Lcom/google/android/gms/internal/ads/zzctx;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctz;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->k(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctz;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->b(Lcom/google/android/gms/internal/ads/zzctx;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctz;->c:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->j(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzeyp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctz;->d:Lcom/google/android/gms/internal/ads/zzeyp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctx;->c(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzctr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctz;->e:Lcom/google/android/gms/internal/ads/zzctr;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctz;->a:Landroid/content/Context;

    return-object p1
.end method

.method final b()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctz;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/zzctr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctz;->e:Lcom/google/android/gms/internal/ads/zzctr;

    return-object v0
.end method

.method final d()Lcom/google/android/gms/internal/ads/zzctx;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzctx;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctz;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctz;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->h(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctz;->c:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->e(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctz;->e:Lcom/google/android/gms/internal/ads/zzctr;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctx;->f(Lcom/google/android/gms/internal/ads/zzctr;)Lcom/google/android/gms/internal/ads/zzctx;

    return-object v0
.end method

.method final e()Lcom/google/android/gms/internal/ads/zzeyp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctz;->d:Lcom/google/android/gms/internal/ads/zzeyp;

    return-object v0
.end method

.method final f()Lcom/google/android/gms/internal/ads/zzeyx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctz;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    return-object v0
.end method
