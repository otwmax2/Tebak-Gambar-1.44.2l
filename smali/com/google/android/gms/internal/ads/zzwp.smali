###### Class com.google.android.gms.internal.ads.zzwp (com.google.android.gms.internal.ads.zzwp)
.class final Lcom/google/android/gms/internal/ads/zzwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/zzwr;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzwr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwp;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwp;->b:Lcom/google/android/gms/internal/ads/zzwr;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzwp;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwp;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzwp;)Lcom/google/android/gms/internal/ads/zzwr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwp;->b:Lcom/google/android/gms/internal/ads/zzwr;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzwp;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzwp;->c:Z

    return p0
.end method


# virtual methods
.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwp;->c:Z

    return-void
.end method
