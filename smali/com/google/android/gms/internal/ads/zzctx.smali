###### Class com.google.android.gms.internal.ads.zzctx (com.google.android.gms.internal.ads.zzctx)
.class public final Lcom/google/android/gms/internal/ads/zzctx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/google/android/gms/internal/ads/zzeyp;

.field private e:Lcom/google/android/gms/internal/ads/zzctr;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzctx;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzctx;->a:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzctx;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzctx;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzctr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzctx;->e:Lcom/google/android/gms/internal/ads/zzctr;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzeyp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzctx;->d:Lcom/google/android/gms/internal/ads/zzeyp;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzctx;)Lcom/google/android/gms/internal/ads/zzeyx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzctx;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    return-object p0
.end method


# virtual methods
.method public final d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzctx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctx;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final e(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzctx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctx;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzctr;)Lcom/google/android/gms/internal/ads/zzctx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctx;->e:Lcom/google/android/gms/internal/ads/zzctr;

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzeyp;)Lcom/google/android/gms/internal/ads/zzctx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctx;->d:Lcom/google/android/gms/internal/ads/zzeyp;

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzctx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctx;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzctz;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzctz;-><init>(Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzcty;)V

    return-object v0
.end method
