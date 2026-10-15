###### Class com.google.android.gms.internal.ads.zzcge (com.google.android.gms.internal.ads.zzcge)
.class public final Lcom/google/android/gms/internal/ads/zzcge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzbzg;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzcge;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->b:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzbzg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->a:Lcom/google/android/gms/internal/ads/zzbzg;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzcge;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcge;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->c:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzcge;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->a:Lcom/google/android/gms/internal/ads/zzbzg;

    return-object p0
.end method
