###### Class com.google.android.gms.internal.ads.zzaku (com.google.android.gms.internal.ads.zzaku)
.class public final Lcom/google/android/gms/internal/ads/zzaku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/internal/ads/zzajx;

.field public final c:Lcom/google/android/gms/internal/ads/zzakx;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzakx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->b:Lcom/google/android/gms/internal/ads/zzajx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->c:Lcom/google/android/gms/internal/ads/zzakx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaku;->b:Lcom/google/android/gms/internal/ads/zzajx;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaku;->c:Lcom/google/android/gms/internal/ads/zzakx;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzakx;)Lcom/google/android/gms/internal/ads/zzaku;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzakx;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzaku;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzajx;)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaku;->c:Lcom/google/android/gms/internal/ads/zzakx;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
