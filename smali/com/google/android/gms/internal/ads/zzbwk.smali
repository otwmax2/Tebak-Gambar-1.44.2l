###### Class com.google.android.gms.internal.ads.zzbwk (com.google.android.gms.internal.ads.zzbwk)
.class final Lcom/google/android/gms/internal/ads/zzbwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/util/Clock;

.field private c:Lcom/google/android/gms/ads/internal/util/zzg;

.field private d:Lcom/google/android/gms/internal/ads/zzbxf;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbwj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/internal/util/zzg;)Lcom/google/android/gms/internal/ads/zzbwk;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbwk;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/common/util/Clock;)Lcom/google/android/gms/internal/ads/zzbwk;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->b:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbxf;)Lcom/google/android/gms/internal/ads/zzbwk;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwk;->d:Lcom/google/android/gms/internal/ads/zzbxf;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzbxg;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwk;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwk;->b:Lcom/google/android/gms/common/util/Clock;

    const-class v1, Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwk;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwk;->d:Lcom/google/android/gms/internal/ads/zzbxf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbxf;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbwk;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbwk;->b:Lcom/google/android/gms/common/util/Clock;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbwk;->c:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbwk;->d:Lcom/google/android/gms/internal/ads/zzbxf;

    const/4 v7, 0x0

    move-object v2, v0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbwm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzbxf;Lcom/google/android/gms/internal/ads/zzbwl;)V

    return-object v0
.end method
